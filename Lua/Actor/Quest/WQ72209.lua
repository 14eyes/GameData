require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72209 = class("Quest72209", QuestActorProxy)
Quest72209.defaultAlias = "Quest72209"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72209:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72209:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7220901"] = self.OnSubStart7220901,
        ["7220902"] = self.OnSubStart7220902,
        ["7220903"] = self.OnSubStart7220903,
        ["7220904"] = self.OnSubStart7220904,
        ["7220905"] = self.OnSubStart7220905,
        ["7220906"] = self.OnSubStart7220906,
        ["7220907"] = self.OnSubStart7220907
    }
end

function Quest72209:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7220901"] = self.OnSubFinish7220901,
        ["7220902"] = self.OnSubFinish7220902,
        ["7220903"] = self.OnSubFinish7220903,
        ["7220904"] = self.OnSubFinish7220904,
        ["7220905"] = self.OnSubFinish7220905,
        ["7220906"] = self.OnSubFinish7220906,
        ["7220907"] = self.OnSubFinish7220907
    }
end

function Quest72209:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7220901"] = self.OnSubFailed7220901,
        ["7220902"] = self.OnSubFailed7220902,
        ["7220903"] = self.OnSubFailed7220903,
        ["7220904"] = self.OnSubFailed7220904,
        ["7220905"] = self.OnSubFailed7220905,
        ["7220906"] = self.OnSubFailed7220906,
        ["7220907"] = self.OnSubFailed7220907
    }
end

function Quest72209:Start()
    print("Start")
end

function Quest72209:OnDestroy()
    print("OnDestroy")
end

function Quest72209:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72209:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72209:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72209:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72209:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72209:OnSubStart7220901(arg1)
    print("OnSubStart7220901")
    self:CreateQuestNpc(arg1, npcs.Npc3181Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3180Data.id, 2)
end

function Quest72209:OnSubFinish7220901(arg1)
    print("OnSubFinish7220901")
end

function Quest72209:OnSubFailed7220901(arg1)
    print("OnSubFailed7220901")
end

function Quest72209:OnSubStart7220902(arg1)
    print("OnSubStart7220902")
    actorMgr:CreateActorWithPos("Q72209Trigger", "Actor/Gadget/Q72209Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72209_Huima").pos, sceneData:GetDummyPoint(3, "WQ72209_Huima").rot, true, false, 3)
end

function Quest72209:OnSubFinish7220902(arg1)
    print("OnSubFinish7220902")
    self:NarratorOnlyTask(datas.pm01, nil, "")
end

function Quest72209:OnSubFailed7220902(arg1)
    print("OnSubFailed7220902")
end

function Quest72209:OnSubStart7220903(arg1)
    print("OnSubStart7220903")
end

function Quest72209:OnSubFinish7220903(arg1)
    print("OnSubFinish7220903")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.pm02, nil, "")
    end, nil, "QUEST_Message_Q7220903", false, true)
end

function Quest72209:OnSubFailed7220903(arg1)
    print("OnSubFailed7220903")
end

function Quest72209:OnSubStart7220904(arg1)
    print("OnSubStart7220904")
end

function Quest72209:OnSubFinish7220904(arg1)
    print("OnSubFinish7220904")
end

function Quest72209:OnSubFailed7220904(arg1)
    print("OnSubFailed7220904")
end

function Quest72209:OnSubStart7220905(arg1)
    print("OnSubStart7220905")
end

function Quest72209:OnSubFinish7220905(arg1)
    print("OnSubFinish7220905")
end

function Quest72209:OnSubFailed7220905(arg1)
    print("OnSubFailed7220905")
end

function Quest72209:OnSubStart7220906(arg1)
    print("OnSubStart7220906")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3181Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3180Data.id, 2)
end

function Quest72209:OnSubFinish7220906(arg1)
    print("OnSubFinish7220906")
end

function Quest72209:OnSubFailed7220906(arg1)
    print("OnSubFailed7220906")
end

function Quest72209:OnSubStart7220907(arg1)
    print("OnSubStart7220907")
end

function Quest72209:OnSubFinish7220907(arg1)
    print("OnSubFinish7220907")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3181Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3180Data.alias)
end

function Quest72209:OnSubFailed7220907(arg1)
    print("OnSubFailed7220907")
end

return Quest72209
