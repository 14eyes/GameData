require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71660 = class("Quest71660", QuestActorProxy)
Quest71660.defaultAlias = "Quest71660"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71660:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71660:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7166001"] = self.OnSubStart7166001, ["7166002"] = self.OnSubStart7166002}
end

function Quest71660:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7166001"] = self.OnSubFinish7166001, ["7166002"] = self.OnSubFinish7166002}
end

function Quest71660:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71660:Start()
    print("Start")
end

function Quest71660:OnDestroy()
    print("OnDestroy")
end

function Quest71660:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71660:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71660:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2083Data.alias, 3)
    actorMgr:DestroyEntityActor("Q71660Trigger", 3, false)
end

function Quest71660:OnSubStart7166001(arg1)
    print("OnSubStart7166001")
    self:CreateQuestNpc(arg1, npcs.Npc1587Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2083Data.id, 2)
end

function Quest71660:OnSubFinish7166001(arg1)
    print("OnSubFinish7166001")
    self.LevelLoadFinishSafeCall(self, function()
        self:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end)
end

function Quest71660:OnSubStart7166002(arg1)
    print("OnSubStart7166002")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1587Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
    local v = self:GetQuestNpcActor(npcs.Npc2083Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q71660Trigger", "Actor/Gadget/Q71660Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7165904_Player").pos, sceneData:GetDummyPoint(3, "Q7165904_Player").rot, true, false, 3)
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
end

function Quest71660:OnSubFinish7166002(arg1)
    print("OnSubFinish7166002")
    self:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2083Data.alias, 3)
end

return Quest71660
