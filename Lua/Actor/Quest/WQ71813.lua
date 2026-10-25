require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71813 = class("Quest71813", QuestActorProxy)
Quest71813.defaultAlias = "Quest71813"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71813:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71813:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7181301"] = self.OnSubStart7181301,
        ["7181302"] = self.OnSubStart7181302,
        ["7181303"] = self.OnSubStart7181303,
        ["7181304"] = self.OnSubStart7181304,
        ["7181305"] = self.OnSubStart7181305,
        ["7181306"] = self.OnSubStart7181306,
        ["7181307"] = self.OnSubStart7181307,
        ["7181308"] = self.OnSubStart7181308,
        ["7181309"] = self.OnSubStart7181309,
        ["7181310"] = self.OnSubStart7181310,
        ["7181311"] = self.OnSubStart7181311
    }
end

function Quest71813:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7181301"] = self.OnSubFinish7181301,
        ["7181302"] = self.OnSubFinish7181302,
        ["7181303"] = self.OnSubFinish7181303,
        ["7181304"] = self.OnSubFinish7181304,
        ["7181305"] = self.OnSubFinish7181305,
        ["7181306"] = self.OnSubFinish7181306,
        ["7181307"] = self.OnSubFinish7181307,
        ["7181308"] = self.OnSubFinish7181308,
        ["7181309"] = self.OnSubFinish7181309,
        ["7181310"] = self.OnSubFinish7181310,
        ["7181311"] = self.OnSubFinish7181311
    }
end

function Quest71813:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7181301"] = self.OnSubFailed7181301,
        ["7181302"] = self.OnSubFailed7181302,
        ["7181303"] = self.OnSubFailed7181303,
        ["7181304"] = self.OnSubFailed7181304,
        ["7181305"] = self.OnSubFailed7181305,
        ["7181306"] = self.OnSubFailed7181306,
        ["7181307"] = self.OnSubFailed7181307,
        ["7181308"] = self.OnSubFailed7181308,
        ["7181309"] = self.OnSubFailed7181309,
        ["7181310"] = self.OnSubFailed7181310,
        ["7181311"] = self.OnSubFailed7181311
    }
end

function Quest71813:Start()
    print("Start")
end

function Quest71813:OnDestroy()
    print("OnDestroy")
end

function Quest71813:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71813:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71813:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71813:DestroyNpc()
    print("DestroyNpc")
    self:DestroyQuestNpcActor(npcs.Npc2143Data.alias, 3)
end

function Quest71813:PaimonReminder10()
    print("PaimonReminder10")
    self:NarratorOnlyTask(datas.Paimon10, nil, "")
end

function Quest71813:OnSubStart7181301(arg1)
    print("OnSubStart7181301")
end

function Quest71813:OnSubFinish7181301(arg1)
    print("OnSubFinish7181301")
end

function Quest71813:OnSubFailed7181301(arg1)
    print("OnSubFailed7181301")
end

function Quest71813:OnSubStart7181302(arg1)
    print("OnSubStart7181302")
end

function Quest71813:OnSubFinish7181302(arg1)
    print("OnSubFinish7181302")
end

function Quest71813:OnSubFailed7181302(arg1)
    print("OnSubFailed7181302")
end

function Quest71813:OnSubStart7181303(arg1)
    print("OnSubStart7181303")
end

function Quest71813:OnSubFinish7181303(arg1)
    print("OnSubFinish7181303")
end

function Quest71813:OnSubFailed7181303(arg1)
    print("OnSubFailed7181303")
end

function Quest71813:OnSubStart7181304(arg1)
    print("OnSubStart7181304")
end

function Quest71813:OnSubFinish7181304(arg1)
    print("OnSubFinish7181304")
end

function Quest71813:OnSubFailed7181304(arg1)
    print("OnSubFailed7181304")
end

function Quest71813:OnSubStart7181305(arg1)
    print("OnSubStart7181305")
end

function Quest71813:OnSubFinish7181305(arg1)
    print("OnSubFinish7181305")
end

function Quest71813:OnSubFailed7181305(arg1)
    print("OnSubFailed7181305")
end

function Quest71813:OnSubStart7181306(arg1)
    print("OnSubStart7181306")
end

function Quest71813:OnSubFinish7181306(arg1)
    print("OnSubFinish7181306")
end

function Quest71813:OnSubFailed7181306(arg1)
    print("OnSubFailed7181306")
end

function Quest71813:OnSubStart7181307(arg1)
    print("OnSubStart7181307")
    actorMgr:CreateActorWithPos(datas.Q71813Trigger1_.alias, datas.Q71813Trigger1_.script, datas.Q71813Trigger1_.id, 1, datas.Q71813Trigger1_.point.pos, datas.Q71813Trigger1_.point.rot, true, false, 3)
end

function Quest71813:OnSubFinish7181307(arg1)
    print("OnSubFinish7181307")
    self:NarratorOnlyTask(datas.Paimon07, nil, "")
end

function Quest71813:OnSubFailed7181307(arg1)
    print("OnSubFailed7181307")
end

function Quest71813:OnSubStart7181308(arg1)
    print("OnSubStart7181308")
    actorMgr:CreateActorWithPos(datas.Q71813Trigger2_.alias, datas.Q71813Trigger2_.script, datas.Q71813Trigger2_.id, 2, datas.Q71813Trigger2_.point.pos, datas.Q71813Trigger2_.point.rot, true, false, 3)
end

function Quest71813:OnSubFinish7181308(arg1)
    print("OnSubFinish7181308")
    self:NarratorOnlyTask(datas.Paimon08, nil, "")
end

function Quest71813:OnSubFailed7181308(arg1)
    print("OnSubFailed7181308")
end

function Quest71813:OnSubStart7181309(arg1)
    print("OnSubStart7181309")
    actorMgr:CreateActorWithPos(datas.Q71813Trigger3_.alias, datas.Q71813Trigger3_.script, datas.Q71813Trigger3_.id, 3, datas.Q71813Trigger3_.point.pos, datas.Q71813Trigger3_.point.rot, true, false, 3)
end

function Quest71813:OnSubFinish7181309(arg1)
    print("OnSubFinish7181309")
    self:NarratorOnlyTask(datas.Paimon09, nil, "")
end

function Quest71813:OnSubFailed7181309(arg1)
    print("OnSubFailed7181309")
end

function Quest71813:OnSubStart7181310(arg1)
    print("OnSubStart7181310")
end

function Quest71813:OnSubFinish7181310(arg1)
    print("OnSubFinish7181310")
    self:ActionSafeCall(self.PaimonReminder10)
end

function Quest71813:OnSubFailed7181310(arg1)
    print("OnSubFailed7181310")
end

function Quest71813:OnSubStart7181311(arg1)
    print("OnSubStart7181311")
    self:CreateQuestNpc(arg1, npcs.Npc2143Data.id, 1)
end

function Quest71813:OnSubFinish7181311(arg1)
    print("OnSubFinish7181311")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest71813:OnSubFailed7181311(arg1)
    print("OnSubFailed7181311")
end

return Quest71813
