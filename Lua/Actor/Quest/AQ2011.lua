require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2011 = class("Quest2011", QuestActorProxy)
Quest2011.defaultAlias = "Quest2011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest2011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest2011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["201101"] = self.OnSubStart201101,
        ["201102"] = self.OnSubStart201102,
        ["201103"] = self.OnSubStart201103,
        ["201104"] = self.OnSubStart201104,
        ["201105"] = self.OnSubStart201105,
        ["201106"] = self.OnSubStart201106,
        ["201107"] = self.OnSubStart201107
    }
end

function Quest2011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["201101"] = self.OnSubFinish201101,
        ["201102"] = self.OnSubFinish201102,
        ["201103"] = self.OnSubFinish201103,
        ["201104"] = self.OnSubFinish201104,
        ["201105"] = self.OnSubFinish201105,
        ["201106"] = self.OnSubFinish201106,
        ["201107"] = self.OnSubFinish201107
    }
end

function Quest2011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["201101"] = self.OnSubFailed201101,
        ["201102"] = self.OnSubFailed201102,
        ["201103"] = self.OnSubFailed201103,
        ["201104"] = self.OnSubFailed201104,
        ["201105"] = self.OnSubFailed201105,
        ["201106"] = self.OnSubFailed201106,
        ["201107"] = self.OnSubFailed201107
    }
end

function Quest2011:Start()
    print("Start")
end

function Quest2011:OnDestroy()
    print("OnDestroy")
end

function Quest2011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2011:OnSubStart201101(arg1)
    print("OnSubStart201101")
    self:CreateQuestNpc(arg1, npcs.Npc2078Data.id, 1)
end

function Quest2011:OnSubFinish201101(arg1)
    print("OnSubFinish201101")
    self:SafeDestroyQuestNpc(npcs.Npc2078Data.alias, 3)
end

function Quest2011:OnSubFailed201101(arg1)
    print("OnSubFailed201101")
end

function Quest2011:OnSubStart201102(arg1)
    print("OnSubStart201102")
    self:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 1)
    actorMgr:CreateActorWithPos("Q201102Trigger", "Actor/Gadget/Q201102Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2011Beidou01").pos, {x = 0, y = 0, z = 0}, true, false)
end

function Quest2011:OnSubFinish201102(arg1)
    print("OnSubFinish201102")
end

function Quest2011:OnSubFailed201102(arg1)
    print("OnSubFailed201102")
end

function Quest2011:OnSubStart201103(arg1)
    print("OnSubStart201103")
    actorMgr:CreateActorWithPos("Q201103Trigger", "Actor/Gadget/Q201103Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2011Beidou01").pos, {x = 0, y = 0, z = 0}, true, false)
end

function Quest2011:OnSubFinish201103(arg1)
    print("OnSubFinish201103")
end

function Quest2011:OnSubFailed201103(arg1)
    print("OnSubFailed201103")
end

function Quest2011:OnSubStart201104(arg1)
    print("OnSubStart201104")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:PlayCutsceneIndex(201104, function(arg1_2)
            actorMgr:CreateActorWithPos("Q2011PlayUSMTrigger", "Actor/Gadget/Q2011PlayUSMTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2011Tuoma01").pos, {x = 0, y = 0, z = 0}, true, false)
            arg1_2:TransmitPlayerWithTextById(arg1, 1, {"QUEST_Message_Q201101"}, 2)
        end, nil, nil, true)
    end)
end

function Quest2011:OnSubFinish201104(arg1)
    print("OnSubFinish201104")
end

function Quest2011:OnSubFailed201104(arg1)
    print("OnSubFailed201104")
end

function Quest2011:OnSubStart201105(arg1)
    print("OnSubStart201105")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 201105)
    end
end

function Quest2011:OnSubFinish201105(arg1)
    print("OnSubFinish201105")
end

function Quest2011:OnSubFailed201105(arg1)
    print("OnSubFailed201105")
end

function Quest2011:OnSubStart201106(arg1)
    print("OnSubStart201106")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 201106)
    end
end

function Quest2011:OnSubFinish201106(arg1)
    print("OnSubFinish201106")
end

function Quest2011:OnSubFailed201106(arg1)
    print("OnSubFailed201106")
end

function Quest2011:OnSubStart201107(arg1)
    print("OnSubStart201107")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 1)
        self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 2)
        self:RequestInteraction(npcs.Npc1033Data.alias)
    end)
end

function Quest2011:OnSubFinish201107(arg1)
    print("OnSubFinish201107")
end

function Quest2011:OnSubFailed201107(arg1)
    print("OnSubFailed201107")
end

return Quest2011
