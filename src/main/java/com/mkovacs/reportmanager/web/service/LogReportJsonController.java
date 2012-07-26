package com.mkovacs.reportmanager.web.service;

import com.mkovacs.reportmanager.domain.report.LogReport;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = LogReport.class, deleteFromJsonMethod="", updateFromJsonArrayMethod="", updateFromJsonMethod="", createFromJsonArrayMethod="")
@Controller
@RequestMapping("/logreports")
public class LogReportJsonController {
}
