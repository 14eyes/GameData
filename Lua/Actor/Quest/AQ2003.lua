require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2003 = class("Quest2003", QuestActorProxy)
Quest2003.defaultAlias = "Quest2003"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest2003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest2003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["200305"] = self.OnSubStart200305,
        ["200301"] = self.OnSubStart200301,
        ["200302"] = self.OnSubStart200302,
        ["200303"] = self.OnSubStart200303,
        ["200304"] = self.OnSubStart200304
    }
end

function Quest2003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["200305"] = self.OnSubFinish200305,
        ["200301"] = self.OnSubFinish200301,
        ["200302"] = self.OnSubFinish200302,
        ["200303"] = self.OnSubFinish200303,
        ["200304"] = self.OnSubFinish200304
    }
end

function Quest2003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["200305"] = self.OnSubFailed200305,
        ["200301"] = self.OnSubFailed200301,
        ["200302"] = self.OnSubFailed200302,
        ["200303"] = self.OnSubFailed200303,
        ["200304"] = self.OnSubFailed200304
    }
end

function Quest2003:Start()
    print("Start")
end

function Quest2003:OnDestroy()
    print("OnDestroy")
end

function Quest2003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2003:OnSubStart200305(arg1)
    print("OnSubStart200305")
    self:CreateQuestNpc(arg1, npcs.Npc3010Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q200305Trigger_.alias, datas.Q200305Trigger_.script, datas.Q200305Trigger_.id, 0, datas.Q200305Trigger_.point.pos, datas.Q200305Trigger_.point.rot, true, false, 3)
end

function Quest2003:OnSubFinish200305(arg1)
    print("OnSubFinish200305")
end

function Quest2003:OnSubFailed200305(arg1)
    print("OnSubFailed200305")
end

function Quest2003:OnSubStart200301(arg1)
    print("OnSubStart200301")
    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3009Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q200301Trigger_.alias, datas.Q200301Trigger_.script, datas.Q200301Trigger_.id, 0, datas.Q200301Trigger_.point.pos, datas.Q200301Trigger_.point.rot, true, false, 1060)
end

function Quest2003:OnSubFinish200301(arg1)
    print("OnSubFinish200301")
    self:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc3009Data.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc3010Data.alias, 3)
end

function Quest2003:OnSubFailed200301(arg1)
    print("OnSubFailed200301")
end

function Quest2003:OnSubStart200302(arg1)
    print("OnSubStart200302")
    actorMgr:CreateActorWithPos(datas.Q200302Trigger_.alias, datas.Q200302Trigger_.script, datas.Q200302Trigger_.id, 0, datas.Q200302Trigger_.point.pos, datas.Q200302Trigger_.point.rot, true, false, 3)
end

function Quest2003:OnSubFinish200302(arg1)
    print("OnSubFinish200302")
    self:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 1060)
end

function Quest2003:OnSubFailed200302(arg1)
    print("OnSubFailed200302")
end

function Quest2003:OnSubStart200303(arg1)
    print("OnSubStart200303")
    self:CreateQuestNpc(arg1, npcs.Npc12021Data.id, 1)
end

function Quest2003:OnSubFinish200303(arg1)
    print("OnSubFinish200303")
    self:SafeDestroyQuestNpc(npcs.Npc12021Data.alias, 3)
end

function Quest2003:OnSubFailed200303(arg1)
    print("OnSubFailed200303")
end

function Quest2003:OnSubStart200304(arg1)
    print("OnSubStart200304")
    actorMgr:CreateActorWithPos(datas.Q200304Trigger_.alias, datas.Q200304Trigger_.script, datas.Q200304Trigger_.id, 0, datas.Q200304Trigger_.point.pos, datas.Q200304Trigger_.point.rot, true, false, 1061)
end

function Quest2003:OnSubFinish200304(arg1)
    print("OnSubFinish200304")
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 1061)
end

function Quest2003:OnSubFailed200304(arg1)
    print("OnSubFailed200304")
end

return Quest2003
