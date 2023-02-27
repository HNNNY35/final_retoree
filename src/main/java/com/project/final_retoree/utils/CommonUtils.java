package com.project.final_retoree.utils;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class CommonUtils {

    public String getUniqueSequence() {

        UUID uuid = UUID.randomUUID();
        return uuid.toString();

    }

    // "src/main/resources/static/files/" => root directory + 상대경로
    public String getRelativeToAbsolutePath(String relativePath){
        String relativePathWithSeperator = relativePath.replace("/", File.separator);
        String absolutePath = new File(relativePathWithSeperator).getAbsolutePath() + File.separator;

        return absolutePath;
    }
}
