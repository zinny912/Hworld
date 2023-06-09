package com.hworld.base.recaptcha;

import java.io.IOException;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RecaptchaController {
	@ResponseBody
	@PostMapping(value = "VerifyRecaptcha")
	public ResponseEntity<?> VerifyRecaptcha(String recaptcha) throws IOException {
        VerifyRecaptcha.setSecretKey("6LfiGXwmAAAAANF_1kXksG6h3Vw0_7bMyV1IXU_A");     
        return ResponseEntity.status(HttpStatus.OK).body(VerifyRecaptcha.verify(recaptcha));
    }
}
