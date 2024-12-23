package com.cow.horse.service.Profession.impl;

import com.cow.horse.dao.Profession.ProfessionMapper;
import com.cow.horse.domain.Profession;
import com.cow.horse.service.Profession.ProfessionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Description
 * Author: cow.horse
 * Date: 2020/3/31 17:33
 **/
@Service
public class ProfessionServiceImpl implements ProfessionService {
  @Resource
  private ProfessionMapper professionMapper;

  @Override
  public List<Profession> getProfessionList() {
    return professionMapper.getProfessionList();
  }
}
