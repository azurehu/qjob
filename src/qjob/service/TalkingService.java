package qjob.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import qjob.dao.TalkingMapper;
import qjob.model.Talking;
@Service
public class TalkingService {
    @Autowired
    TalkingMapper talkingMapper;
    public int insert(Talking record){
	return talkingMapper.insert(record); 
    }
}
