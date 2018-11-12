xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://www.example.org";
(:: import schema at "DBSource.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbReference";
(:: import schema at "Resources/dbReference_table.xsd" ::)

declare variable $Request as element() (:: schema-element(ns1:EmpCollection) ::) external;

declare function local:func($Request as element() (:: schema-element(ns1:EmpCollection) ::)) as element() (:: schema-element(ns2:Response) ::) {
    <ns2:Response>
        <ns2:EmployeeID>{fn:data($Request/ns1:Emp/ns1:empid)}</ns2:EmployeeID>
        <ns2:EmployeeName>{fn:data($Request/ns1:Emp/ns1:empname)}</ns2:EmployeeName>
        <ns2:EmployeeAddress>{fn:data($Request/ns1:Emp/ns1:empadd)}</ns2:EmployeeAddress>
        <ns2:EmployeePhone>{fn:data($Request/ns1:Emp/ns1:empphone)}</ns2:EmployeePhone>
    </ns2:Response>
};

local:func($Request)
