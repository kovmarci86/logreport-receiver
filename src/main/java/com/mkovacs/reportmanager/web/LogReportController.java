package com.mkovacs.reportmanager.web;

import com.mkovacs.reportmanager.domain.report.LogReport;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/reports")
@Controller
@RooWebScaffold(path = "reports", formBackingObject = LogReport.class, update = false, create = false)
public class LogReportController {
}
