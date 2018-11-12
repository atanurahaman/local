xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "calc.xsd" ::)

declare variable $ADDreq as element() (:: schema-element(ns1:AdditionRequest) ::) external;

declare function local:func($ADDreq as eleHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHment() (:: schema-element(ns1:AdditionRequest) ::)) as element() (:: schema-element(ns1:AdditionResponse) ::) {
    <ns1:AdditionResponse>
        <ns1:result>{fn:data($ADDreq/ns1:operand1)+fn:data($ADDreq/ns1:operand2)}</ns1:result>
    </ns1:AdditionResponse>
};

local:func($ADDreq)