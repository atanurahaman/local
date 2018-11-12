xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "DBSource.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbReference";
(:: import schema at "Resources/dbReference_table.xsd" ::)

declare variable $Req as element() (:: schema-element(ns1:Request) ::) external;

declare function local:func($Req as element() (:: schema-element(ns1:Request) ::)) as element() (:: schema-element(ns2:dbReferenceSelect_idInputParameters) ::) {
    <ns2:dbReferenceSelect_idInputParameters>
        <ns2:id>{fn:data($Req/ns1:EmployeeID)}</ns2:id>
    </ns2:dbReferenceSelect_idInputParameters>
};

local:func($Req)
