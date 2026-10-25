require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72173 = class("Quest72173", QuestActorProxy)
Quest72173.defaultAlias = "Quest72173"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72173:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72173:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7217316"] = self.OnSubStart7217316,
        ["7217347"] = self.OnSubStart7217347,
        ["7217349"] = self.OnSubStart7217349,
        ["7217301"] = self.OnSubStart7217301,
        ["7217321"] = self.OnSubStart7217321,
        ["7217302"] = self.OnSubStart7217302,
        ["7217346"] = self.OnSubStart7217346,
        ["7217323"] = self.OnSubStart7217323,
        ["7217326"] = self.OnSubStart7217326,
        ["7217303"] = self.OnSubStart7217303,
        ["7217329"] = self.OnSubStart7217329,
        ["7217324"] = self.OnSubStart7217324,
        ["7217304"] = self.OnSubStart7217304,
        ["7217325"] = self.OnSubStart7217325,
        ["7217327"] = self.OnSubStart7217327,
        ["7217305"] = self.OnSubStart7217305,
        ["7217330"] = self.OnSubStart7217330,
        ["7217328"] = self.OnSubStart7217328,
        ["7217306"] = self.OnSubStart7217306,
        ["7217331"] = self.OnSubStart7217331,
        ["7217332"] = self.OnSubStart7217332,
        ["7217333"] = self.OnSubStart7217333,
        ["7217334"] = self.OnSubStart7217334,
        ["7217307"] = self.OnSubStart7217307,
        ["7217335"] = self.OnSubStart7217335,
        ["7217336"] = self.OnSubStart7217336,
        ["7217308"] = self.OnSubStart7217308,
        ["7217309"] = self.OnSubStart7217309,
        ["7217310"] = self.OnSubStart7217310,
        ["7217317"] = self.OnSubStart7217317,
        ["7217337"] = self.OnSubStart7217337,
        ["7217311"] = self.OnSubStart7217311,
        ["7217338"] = self.OnSubStart7217338,
        ["7217312"] = self.OnSubStart7217312,
        ["7217339"] = self.OnSubStart7217339,
        ["7217340"] = self.OnSubStart7217340,
        ["7217341"] = self.OnSubStart7217341,
        ["7217313"] = self.OnSubStart7217313,
        ["7217342"] = self.OnSubStart7217342,
        ["7217314"] = self.OnSubStart7217314,
        ["7217350"] = self.OnSubStart7217350,
        ["7217315"] = self.OnSubStart7217315,
        ["7217343"] = self.OnSubStart7217343,
        ["7217318"] = self.OnSubStart7217318,
        ["7217344"] = self.OnSubStart7217344,
        ["7217322"] = self.OnSubStart7217322,
        ["7217348"] = self.OnSubStart7217348,
        ["7217319"] = self.OnSubStart7217319,
        ["7217320"] = self.OnSubStart7217320,
        ["7217345"] = self.OnSubStart7217345
    }
end

function Quest72173:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7217316"] = self.OnSubFinish7217316,
        ["7217347"] = self.OnSubFinish7217347,
        ["7217349"] = self.OnSubFinish7217349,
        ["7217301"] = self.OnSubFinish7217301,
        ["7217321"] = self.OnSubFinish7217321,
        ["7217302"] = self.OnSubFinish7217302,
        ["7217346"] = self.OnSubFinish7217346,
        ["7217323"] = self.OnSubFinish7217323,
        ["7217326"] = self.OnSubFinish7217326,
        ["7217303"] = self.OnSubFinish7217303,
        ["7217329"] = self.OnSubFinish7217329,
        ["7217324"] = self.OnSubFinish7217324,
        ["7217304"] = self.OnSubFinish7217304,
        ["7217325"] = self.OnSubFinish7217325,
        ["7217327"] = self.OnSubFinish7217327,
        ["7217305"] = self.OnSubFinish7217305,
        ["7217330"] = self.OnSubFinish7217330,
        ["7217328"] = self.OnSubFinish7217328,
        ["7217306"] = self.OnSubFinish7217306,
        ["7217331"] = self.OnSubFinish7217331,
        ["7217332"] = self.OnSubFinish7217332,
        ["7217333"] = self.OnSubFinish7217333,
        ["7217334"] = self.OnSubFinish7217334,
        ["7217307"] = self.OnSubFinish7217307,
        ["7217335"] = self.OnSubFinish7217335,
        ["7217336"] = self.OnSubFinish7217336,
        ["7217308"] = self.OnSubFinish7217308,
        ["7217309"] = self.OnSubFinish7217309,
        ["7217310"] = self.OnSubFinish7217310,
        ["7217317"] = self.OnSubFinish7217317,
        ["7217337"] = self.OnSubFinish7217337,
        ["7217311"] = self.OnSubFinish7217311,
        ["7217338"] = self.OnSubFinish7217338,
        ["7217312"] = self.OnSubFinish7217312,
        ["7217339"] = self.OnSubFinish7217339,
        ["7217340"] = self.OnSubFinish7217340,
        ["7217341"] = self.OnSubFinish7217341,
        ["7217313"] = self.OnSubFinish7217313,
        ["7217342"] = self.OnSubFinish7217342,
        ["7217314"] = self.OnSubFinish7217314,
        ["7217350"] = self.OnSubFinish7217350,
        ["7217315"] = self.OnSubFinish7217315,
        ["7217343"] = self.OnSubFinish7217343,
        ["7217318"] = self.OnSubFinish7217318,
        ["7217344"] = self.OnSubFinish7217344,
        ["7217322"] = self.OnSubFinish7217322,
        ["7217348"] = self.OnSubFinish7217348,
        ["7217319"] = self.OnSubFinish7217319,
        ["7217320"] = self.OnSubFinish7217320,
        ["7217345"] = self.OnSubFinish7217345
    }
end

function Quest72173:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7217316"] = self.OnSubFailed7217316,
        ["7217347"] = self.OnSubFailed7217347,
        ["7217349"] = self.OnSubFailed7217349,
        ["7217301"] = self.OnSubFailed7217301,
        ["7217321"] = self.OnSubFailed7217321,
        ["7217302"] = self.OnSubFailed7217302,
        ["7217346"] = self.OnSubFailed7217346,
        ["7217323"] = self.OnSubFailed7217323,
        ["7217326"] = self.OnSubFailed7217326,
        ["7217303"] = self.OnSubFailed7217303,
        ["7217329"] = self.OnSubFailed7217329,
        ["7217324"] = self.OnSubFailed7217324,
        ["7217304"] = self.OnSubFailed7217304,
        ["7217325"] = self.OnSubFailed7217325,
        ["7217327"] = self.OnSubFailed7217327,
        ["7217305"] = self.OnSubFailed7217305,
        ["7217330"] = self.OnSubFailed7217330,
        ["7217328"] = self.OnSubFailed7217328,
        ["7217306"] = self.OnSubFailed7217306,
        ["7217331"] = self.OnSubFailed7217331,
        ["7217332"] = self.OnSubFailed7217332,
        ["7217333"] = self.OnSubFailed7217333,
        ["7217334"] = self.OnSubFailed7217334,
        ["7217307"] = self.OnSubFailed7217307,
        ["7217335"] = self.OnSubFailed7217335,
        ["7217336"] = self.OnSubFailed7217336,
        ["7217308"] = self.OnSubFailed7217308,
        ["7217309"] = self.OnSubFailed7217309,
        ["7217310"] = self.OnSubFailed7217310,
        ["7217317"] = self.OnSubFailed7217317,
        ["7217337"] = self.OnSubFailed7217337,
        ["7217311"] = self.OnSubFailed7217311,
        ["7217338"] = self.OnSubFailed7217338,
        ["7217312"] = self.OnSubFailed7217312,
        ["7217339"] = self.OnSubFailed7217339,
        ["7217340"] = self.OnSubFailed7217340,
        ["7217341"] = self.OnSubFailed7217341,
        ["7217313"] = self.OnSubFailed7217313,
        ["7217342"] = self.OnSubFailed7217342,
        ["7217314"] = self.OnSubFailed7217314,
        ["7217350"] = self.OnSubFailed7217350,
        ["7217315"] = self.OnSubFailed7217315,
        ["7217343"] = self.OnSubFailed7217343,
        ["7217318"] = self.OnSubFailed7217318,
        ["7217344"] = self.OnSubFailed7217344,
        ["7217322"] = self.OnSubFailed7217322,
        ["7217348"] = self.OnSubFailed7217348,
        ["7217319"] = self.OnSubFailed7217319,
        ["7217320"] = self.OnSubFailed7217320,
        ["7217345"] = self.OnSubFailed7217345
    }
end

function Quest72173:Start()
    print("Start")
end

function Quest72173:OnDestroy()
    print("OnDestroy")
end

function Quest72173:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72173:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72173:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72173:OnSubStart7217316(arg1)
    print("OnSubStart7217316")
end

function Quest72173:OnSubFinish7217316(arg1)
    print("OnSubFinish7217316")
    self:LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("72173"):NarratorOnlyTask(datas.str7217301, nil, "")
    end)
end

function Quest72173:OnSubFailed7217316(arg1)
    print("OnSubFailed7217316")
end

function Quest72173:OnSubStart7217347(arg1)
    print("OnSubStart7217347")
end

function Quest72173:OnSubFinish7217347(arg1)
    print("OnSubFinish7217347")
end

function Quest72173:OnSubFailed7217347(arg1)
    print("OnSubFailed7217347")
end

function Quest72173:OnSubStart7217349(arg1)
    print("OnSubStart7217349")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    actorMgr:CreateActorWithPos("Q7217349fin", "Actor/Gadget/Q7217349fin", 70900002, 0, sceneData:GetDummyPoint(3, "72173_start").pos, sceneData:GetDummyPoint(3, "72173_start").rot, true, false, 3)
end

function Quest72173:OnSubFinish7217349(arg1)
    print("OnSubFinish7217349")
end

function Quest72173:OnSubFailed7217349(arg1)
    print("OnSubFailed7217349")
end

function Quest72173:OnSubStart7217301(arg1)
    print("OnSubStart7217301")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
end

function Quest72173:OnSubFinish7217301(arg1)
    print("OnSubFinish7217301")
    self:SafeDestroyQuestNpc(npcs.Npc20322Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:ActionSafeCall(function(arg1)
        actorMgr:GetActor("72173"):NarratorOnlyTask(datas.finafu, nil, "")
    end)
end

function Quest72173:OnSubFailed7217301(arg1)
    print("OnSubFailed7217301")
end

function Quest72173:OnSubStart7217321(arg1)
    print("OnSubStart7217321")
    actorMgr:CreateActorWithPos("Q7217321fin", "Actor/Gadget/Q7217321fin", 70900002, 0, sceneData:GetDummyPoint(3, "72167_jinquan").pos, sceneData:GetDummyPoint(3, "72167_jinquan").rot, true, false, 3)
end

function Quest72173:OnSubFinish7217321(arg1)
    print("OnSubFinish7217321")
end

function Quest72173:OnSubFailed7217321(arg1)
    print("OnSubFailed7217321")
end

function Quest72173:OnSubStart7217302(arg1)
    print("OnSubStart7217302")
    actorMgr:CreateActorWithPos("Q7217302fin", "Actor/Gadget/Q7217302fin", 70900002, 0, sceneData:GetDummyPoint(3, "72173_a").pos, sceneData:GetDummyPoint(3, "72173_a").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7217302rmda", "Actor/Gadget/Q7217302rmda", 70900002, 0, sceneData:GetDummyPoint(3, "72173_a").pos, sceneData:GetDummyPoint(3, "72173_a").rot, true, false, 3)
end

function Quest72173:OnSubFinish7217302(arg1)
    print("OnSubFinish7217302")
end

function Quest72173:OnSubFailed7217302(arg1)
    print("OnSubFailed7217302")
end

function Quest72173:OnSubStart7217346(arg1)
    print("OnSubStart7217346")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:RequestInteraction(npcs.Npc20322Data.alias)
end

function Quest72173:OnSubFinish7217346(arg1)
    print("OnSubFinish7217346")
    self:SafeDestroyQuestNpc(npcs.Npc20322Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:ActionSafeCall(function(arg1)
        actorMgr:GetActor("72173"):NarratorOnlyTask(datas.fin_7217346, nil, "")
    end)
end

function Quest72173:OnSubFailed7217346(arg1)
    print("OnSubFailed7217346")
end

function Quest72173:OnSubStart7217323(arg1)
    print("OnSubStart7217323")
end

function Quest72173:OnSubFinish7217323(arg1)
    print("OnSubFinish7217323")
end

function Quest72173:OnSubFailed7217323(arg1)
    print("OnSubFailed7217323")
end

function Quest72173:OnSubStart7217326(arg1)
    print("OnSubStart7217326")
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.str_7217326, nil, "")
end

function Quest72173:OnSubFinish7217326(arg1)
    print("OnSubFinish7217326")
end

function Quest72173:OnSubFailed7217326(arg1)
    print("OnSubFailed7217326")
end

function Quest72173:OnSubStart7217303(arg1)
    print("OnSubStart7217303")
    self:CreateQuestNpc(arg1, npcs.Npc20475Data.id, 1)
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.str_7217303, nil, "")
end

function Quest72173:OnSubFinish7217303(arg1)
    print("OnSubFinish7217303")
    self:SafeDestroyQuestNpc(npcs.Npc20475Data.alias, 3)
end

function Quest72173:OnSubFailed7217303(arg1)
    print("OnSubFailed7217303")
end

function Quest72173:OnSubStart7217329(arg1)
    print("OnSubStart7217329")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217329", function(arg1)
            arg1:FinishQuestID(false, 7217329)
        end, nil, nil, false)
    end)
end

function Quest72173:OnSubFinish7217329(arg1)
    print("OnSubFinish7217329")
end

function Quest72173:OnSubFailed7217329(arg1)
    print("OnSubFailed7217329")
end

function Quest72173:OnSubStart7217324(arg1)
    print("OnSubStart7217324")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:RequestInteraction(npcs.Npc20322Data.alias)
end

function Quest72173:OnSubFinish7217324(arg1)
    print("OnSubFinish7217324")
    self:SafeDestroyQuestNpc(npcs.Npc20322Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.fin_7217324, nil, "")
end

function Quest72173:OnSubFailed7217324(arg1)
    print("OnSubFailed7217324")
end

function Quest72173:OnSubStart7217304(arg1)
    print("OnSubStart7217304")
    actorMgr:CreateActorWithPos("Q7217304fin", "Actor/Gadget/Q7217304fin", 70900002, 0, sceneData:GetDummyPoint(3, "72173_b").pos, sceneData:GetDummyPoint(3, "72173_b").rot, true, false, 3)
end

function Quest72173:OnSubFinish7217304(arg1)
    print("OnSubFinish7217304")
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.fin_7217304, nil, "")
end

function Quest72173:OnSubFailed7217304(arg1)
    print("OnSubFailed7217304")
end

function Quest72173:OnSubStart7217325(arg1)
    print("OnSubStart7217325")
end

function Quest72173:OnSubFinish7217325(arg1)
    print("OnSubFinish7217325")
end

function Quest72173:OnSubFailed7217325(arg1)
    print("OnSubFailed7217325")
end

function Quest72173:OnSubStart7217327(arg1)
    print("OnSubStart7217327")
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.str_7217327, nil, "")
end

function Quest72173:OnSubFinish7217327(arg1)
    print("OnSubFinish7217327")
end

function Quest72173:OnSubFailed7217327(arg1)
    print("OnSubFailed7217327")
end

function Quest72173:OnSubStart7217305(arg1)
    print("OnSubStart7217305")
    self:CreateQuestNpc(arg1, npcs.Npc20475Data.id, 1)
end

function Quest72173:OnSubFinish7217305(arg1)
    print("OnSubFinish7217305")
    self:SafeDestroyQuestNpc(npcs.Npc20475Data.alias, 3)
end

function Quest72173:OnSubFailed7217305(arg1)
    print("OnSubFailed7217305")
end

function Quest72173:OnSubStart7217330(arg1)
    print("OnSubStart7217330")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217330", function(arg1)
            arg1:FinishQuestID(false, 7217330)
        end, nil, nil, false)
    end)
end

function Quest72173:OnSubFinish7217330(arg1)
    print("OnSubFinish7217330")
end

function Quest72173:OnSubFailed7217330(arg1)
    print("OnSubFailed7217330")
end

function Quest72173:OnSubStart7217328(arg1)
    print("OnSubStart7217328")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:RequestInteraction(npcs.Npc20322Data.alias)
end

function Quest72173:OnSubFinish7217328(arg1)
    print("OnSubFinish7217328")
    self:SafeDestroyQuestNpc(npcs.Npc20322Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.fin_7217328, nil, "")
end

function Quest72173:OnSubFailed7217328(arg1)
    print("OnSubFailed7217328")
end

function Quest72173:OnSubStart7217306(arg1)
    print("OnSubStart7217306")
    actorMgr:CreateActorWithPos("Q7217306fin", "Actor/Gadget/Q7217306fin", 70900002, 0, sceneData:GetDummyPoint(3, "72173_c").pos, sceneData:GetDummyPoint(3, "72173_c").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7217306_rmdc", "Actor/Gadget/Q7217306_rmdc", 70900002, 0, sceneData:GetDummyPoint(3, "72173_Crmd").pos, sceneData:GetDummyPoint(3, "72173_Crmd").rot, true, false, 3)
end

function Quest72173:OnSubFinish7217306(arg1)
    print("OnSubFinish7217306")
end

function Quest72173:OnSubFailed7217306(arg1)
    print("OnSubFailed7217306")
end

function Quest72173:OnSubStart7217331(arg1)
    print("OnSubStart7217331")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:RequestInteraction(npcs.Npc20322Data.alias)
end

function Quest72173:OnSubFinish7217331(arg1)
    print("OnSubFinish7217331")
    self:SafeDestroyQuestNpc(npcs.Npc20322Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72173:OnSubFailed7217331(arg1)
    print("OnSubFailed7217331")
end

function Quest72173:OnSubStart7217332(arg1)
    print("OnSubStart7217332")
end

function Quest72173:OnSubFinish7217332(arg1)
    print("OnSubFinish7217332")
end

function Quest72173:OnSubFailed7217332(arg1)
    print("OnSubFailed7217332")
end

function Quest72173:OnSubStart7217333(arg1)
    print("OnSubStart7217333")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:RequestInteraction(npcs.Npc20320Data.alias)
end

function Quest72173:OnSubFinish7217333(arg1)
    print("OnSubFinish7217333")
    self:SafeDestroyQuestNpc(npcs.Npc20320Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20322Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.fin_7217333, nil, "")
end

function Quest72173:OnSubFailed7217333(arg1)
    print("OnSubFailed7217333")
end

function Quest72173:OnSubStart7217334(arg1)
    print("OnSubStart7217334")
end

function Quest72173:OnSubFinish7217334(arg1)
    print("OnSubFinish7217334")
end

function Quest72173:OnSubFailed7217334(arg1)
    print("OnSubFailed7217334")
end

function Quest72173:OnSubStart7217307(arg1)
    print("OnSubStart7217307")
    self:CreateQuestNpc(arg1, npcs.Npc20475Data.id, 3)
end

function Quest72173:OnSubFinish7217307(arg1)
    print("OnSubFinish7217307")
    self:SafeDestroyQuestNpc(npcs.Npc20475Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72173:OnSubFailed7217307(arg1)
    print("OnSubFailed7217307")
end

function Quest72173:OnSubStart7217335(arg1)
    print("OnSubStart7217335")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217335", function(arg1)
            arg1:FinishQuestID(false, 7217335)
        end, nil, nil, false)
    end)
end

function Quest72173:OnSubFinish7217335(arg1)
    print("OnSubFinish7217335")
end

function Quest72173:OnSubFailed7217335(arg1)
    print("OnSubFailed7217335")
end

function Quest72173:OnSubStart7217336(arg1)
    print("OnSubStart7217336")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:RequestInteraction(npcs.Npc20320Data.alias)
end

function Quest72173:OnSubFinish7217336(arg1)
    print("OnSubFinish7217336")
    self:SafeDestroyQuestNpc(npcs.Npc20320Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20322Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.fin_7217336, nil, "")
end

function Quest72173:OnSubFailed7217336(arg1)
    print("OnSubFailed7217336")
end

function Quest72173:OnSubStart7217308(arg1)
    print("OnSubStart7217308")
    actorMgr:CreateActorWithPos("Q7217308fin", "Actor/Gadget/Q7217308fin", 70900002, 0, sceneData:GetDummyPoint(3, "72173_shan").pos, sceneData:GetDummyPoint(3, "72173_shan").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7217308rmd", "Actor/Gadget/Q7217308rmd", 70900002, 0, sceneData:GetDummyPoint(3, "72173_shan").pos, sceneData:GetDummyPoint(3, "72173_shan").rot, true, false, 3)
end

function Quest72173:OnSubFinish7217308(arg1)
    print("OnSubFinish7217308")
end

function Quest72173:OnSubFailed7217308(arg1)
    print("OnSubFailed7217308")
end

function Quest72173:OnSubStart7217309(arg1)
    print("OnSubStart7217309")
    actorMgr:CreateActorWithPos("Q7217309_rmd", "Actor/Gadget/Q7217309_rmd", 70900002, 0, sceneData:GetDummyPoint(3, "72173_shan").pos, sceneData:GetDummyPoint(3, "72173_shan").rot, true, false, 3)
end

function Quest72173:OnSubFinish7217309(arg1)
    print("OnSubFinish7217309")
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.str_7217310, nil, "")
end

function Quest72173:OnSubFailed7217309(arg1)
    print("OnSubFailed7217309")
end

function Quest72173:OnSubStart7217310(arg1)
    print("OnSubStart7217310")
end

function Quest72173:OnSubFinish7217310(arg1)
    print("OnSubFinish7217310")
end

function Quest72173:OnSubFailed7217310(arg1)
    print("OnSubFailed7217310")
end

function Quest72173:OnSubStart7217317(arg1)
    print("OnSubStart7217317")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:RequestInteraction(npcs.Npc20322Data.alias)
end

function Quest72173:OnSubFinish7217317(arg1)
    print("OnSubFinish7217317")
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.fin_7217317, nil, "")
end

function Quest72173:OnSubFailed7217317(arg1)
    print("OnSubFailed7217317")
end

function Quest72173:OnSubStart7217337(arg1)
    print("OnSubStart7217337")
end

function Quest72173:OnSubFinish7217337(arg1)
    print("OnSubFinish7217337")
end

function Quest72173:OnSubFailed7217337(arg1)
    print("OnSubFailed7217337")
end

function Quest72173:OnSubStart7217311(arg1)
    print("OnSubStart7217311")
    self:CreateQuestNpc(arg1, npcs.Npc20475Data.id, 3)
end

function Quest72173:OnSubFinish7217311(arg1)
    print("OnSubFinish7217311")
    self:SafeDestroyQuestNpc(npcs.Npc20475Data.alias, 3)
end

function Quest72173:OnSubFailed7217311(arg1)
    print("OnSubFailed7217311")
end

function Quest72173:OnSubStart7217338(arg1)
    print("OnSubStart7217338")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217338", function(arg1)
            arg1:FinishQuestID(false, 7217338)
        end, nil, nil, false)
    end)
end

function Quest72173:OnSubFinish7217338(arg1)
    print("OnSubFinish7217338")
end

function Quest72173:OnSubFailed7217338(arg1)
    print("OnSubFailed7217338")
end

function Quest72173:OnSubStart7217312(arg1)
    print("OnSubStart7217312")
    self:RequestInteraction(npcs.Npc20320Data.alias)
end

function Quest72173:OnSubFinish7217312(arg1)
    print("OnSubFinish7217312")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72173:OnSubFailed7217312(arg1)
    print("OnSubFailed7217312")
end

function Quest72173:OnSubStart7217339(arg1)
    print("OnSubStart7217339")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
    self:TransmitPlayerById(arg1, 3)
    actorMgr:CreateActorWithPos("Q7217339", "Actor/Gadget/Q7217339", 70900002, 0, sceneData:GetDummyPoint(3, "72173_shantp").pos, sceneData:GetDummyPoint(3, "72173_shantp").rot, true, false, 3)
end

function Quest72173:OnSubFinish7217339(arg1)
    print("OnSubFinish7217339")
end

function Quest72173:OnSubFailed7217339(arg1)
    print("OnSubFailed7217339")
end

function Quest72173:OnSubStart7217340(arg1)
    print("OnSubStart7217340")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
end

function Quest72173:OnSubFinish7217340(arg1)
    print("OnSubFinish7217340")
    self:SafeDestroyQuestNpc(npcs.Npc20320Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:CallDelay(2, function(arg1)
        actorMgr:GetActor("72173"):NarratorOnlyTask(datas.fin_7217340, nil, "")
    end)
end

function Quest72173:OnSubFailed7217340(arg1)
    print("OnSubFailed7217340")
end

function Quest72173:OnSubStart7217341(arg1)
    print("OnSubStart7217341")
    actorMgr:CreateActorWithPos("Q7217341fin", "Actor/Gadget/Q7217341fin", 70900002, 0, sceneData:GetDummyPoint(3, "72173_song").pos, sceneData:GetDummyPoint(3, "72173_song").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7217341rmd", "Actor/Gadget/Q7217341rmd", 70900002, 0, sceneData:GetDummyPoint(3, "72173_song").pos, sceneData:GetDummyPoint(3, "72173_song").rot, true, false, 3)
end

function Quest72173:OnSubFinish7217341(arg1)
    print("OnSubFinish7217341")
end

function Quest72173:OnSubFailed7217341(arg1)
    print("OnSubFailed7217341")
end

function Quest72173:OnSubStart7217313(arg1)
    print("OnSubStart7217313")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:RequestInteraction(npcs.Npc20320Data.alias)
end

function Quest72173:OnSubFinish7217313(arg1)
    print("OnSubFinish7217313")
end

function Quest72173:OnSubFailed7217313(arg1)
    print("OnSubFailed7217313")
end

function Quest72173:OnSubStart7217342(arg1)
    print("OnSubStart7217342")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217342", function(arg1)
            arg1:FinishQuestID(false, 7217342)
        end, nil, nil, false)
    end)
end

function Quest72173:OnSubFinish7217342(arg1)
    print("OnSubFinish7217342")
end

function Quest72173:OnSubFailed7217342(arg1)
    print("OnSubFailed7217342")
end

function Quest72173:OnSubStart7217314(arg1)
    print("OnSubStart7217314")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:RequestInteraction(npcs.Npc20320Data.alias)
end

function Quest72173:OnSubFinish7217314(arg1)
    print("OnSubFinish7217314")
    self:SafeDestroyQuestNpc(npcs.Npc20320Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.fin_7217314, nil, "")
end

function Quest72173:OnSubFailed7217314(arg1)
    print("OnSubFailed7217314")
end

function Quest72173:OnSubStart7217350(arg1)
    print("OnSubStart7217350")
    actorMgr:CreateActorWithPos("Q7217350fin", "Actor/Gadget/Q7217350fin", 70900002, 0, sceneData:GetDummyPoint(3, "72173_shan").pos, sceneData:GetDummyPoint(3, "72173_shan").rot, true, false, 3)
end

function Quest72173:OnSubFinish7217350(arg1)
    print("OnSubFinish7217350")
end

function Quest72173:OnSubFailed7217350(arg1)
    print("OnSubFailed7217350")
end

function Quest72173:OnSubStart7217315(arg1)
    print("OnSubStart7217315")
end

function Quest72173:OnSubFinish7217315(arg1)
    print("OnSubFinish7217315")
end

function Quest72173:OnSubFailed7217315(arg1)
    print("OnSubFailed7217315")
end

function Quest72173:OnSubStart7217343(arg1)
    print("OnSubStart7217343")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    self:RequestInteraction(npcs.Npc20320Data.alias)
end

function Quest72173:OnSubFinish7217343(arg1)
    print("OnSubFinish7217343")
end

function Quest72173:OnSubFailed7217343(arg1)
    print("OnSubFailed7217343")
end

function Quest72173:OnSubStart7217318(arg1)
    print("OnSubStart7217318")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217318", function(arg1)
            arg1:FinishQuestID(false, 7217318)
        end, nil, nil, false)
    end)
end

function Quest72173:OnSubFinish7217318(arg1)
    print("OnSubFinish7217318")
end

function Quest72173:OnSubFailed7217318(arg1)
    print("OnSubFailed7217318")
end

function Quest72173:OnSubStart7217344(arg1)
    print("OnSubStart7217344")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    end)
end

function Quest72173:OnSubFinish7217344(arg1)
    print("OnSubFinish7217344")
end

function Quest72173:OnSubFailed7217344(arg1)
    print("OnSubFailed7217344")
end

function Quest72173:OnSubStart7217322(arg1)
    print("OnSubStart7217322")
end

function Quest72173:OnSubFinish7217322(arg1)
    print("OnSubFinish7217322")
end

function Quest72173:OnSubFailed7217322(arg1)
    print("OnSubFailed7217322")
end

function Quest72173:OnSubStart7217348(arg1)
    print("OnSubStart7217348")
end

function Quest72173:OnSubFinish7217348(arg1)
    print("OnSubFinish7217348")
end

function Quest72173:OnSubFailed7217348(arg1)
    print("OnSubFailed7217348")
end

function Quest72173:OnSubStart7217319(arg1)
    print("OnSubStart7217319")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 2)
end

function Quest72173:OnSubFinish7217319(arg1)
    print("OnSubFinish7217319")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.fin_7217319, nil, "")
end

function Quest72173:OnSubFailed7217319(arg1)
    print("OnSubFailed7217319")
end

function Quest72173:OnSubStart7217320(arg1)
    print("OnSubStart7217320")
    self:CallDelay(1, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 2)
        actorMgr:CreateActorWithPos("Q7217320Trigger", "Actor/Gadget/Q7217320Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72173_motianfin").pos, sceneData:GetDummyPoint(3, "72173_motianfin").rot, true, false, 3)
    end)
end

function Quest72173:OnSubFinish7217320(arg1)
    print("OnSubFinish7217320")
    self:SafeDestroyQuestNpc(npcs.Npc20322Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20321Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72173:OnSubFailed7217320(arg1)
    print("OnSubFailed7217320")
end

function Quest72173:OnSubStart7217345(arg1)
    print("OnSubStart7217345")
end

function Quest72173:OnSubFinish7217345(arg1)
    print("OnSubFinish7217345")
end

function Quest72173:OnSubFailed7217345(arg1)
    print("OnSubFailed7217345")
end

return Quest72173
