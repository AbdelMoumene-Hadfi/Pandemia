import React from 'react';
import './Addproduct.css';
import { Container, Image, AccordionCollapse} from 'react-bootstrap';
import { Row,Col,Card,CardDeck} from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import { SocialIcon } from 'react-social-icons';
import { Link} from'react-router-dom';
import {Button} from 'primereact/button';
import {Dropdown} from 'primereact/dropdown';
import {InputTextarea} from 'primereact/inputtextarea';
import {InputNumber} from 'primereact/inputnumber';
import {Spinner} from 'primereact/spinner';




import  { useState } from 'react';
import {Chips} from 'primereact/chips';

function Addproduct() {
    const [values1, setValues1] = useState([]);

    const [value17, setValue17] = useState(20);



  return (


      <div class="Home">
       <div class="intro">
                <Image src={require('./img/product/product.jpg')} className="header-image" />
        </div>
        <div className="p-fluid">
            <h1>FILL IN THE INFORMATION</h1>
            <Container>
            <Row>
                <Col>
                <h3>Product Label</h3>
            <Chips value={values1} onChange={(e) => setValues1(e.value)}></Chips>
                </Col>
            </Row>


            <h3>Product Description</h3>
            <InputTextarea rows={5} cols={30} autoResize={true}></InputTextarea>
            <Row>
                <Col>
                <h3>Quantity</h3>
            <Chips value={values1} onChange={(e) => setValues1(e.value)}></Chips>
                </Col>
                <Col>
                <h3>Price</h3>

            <InputNumber value={value17} onChange={(e) => setValue17(e.value)} showButtons mode="currency" currency="MAD" />

                </Col>
            </Row>

            <Button label="SUBMIT" id="sh" />
            </Container>


        </div>

</div>
  );
}
export default Addproduct;
