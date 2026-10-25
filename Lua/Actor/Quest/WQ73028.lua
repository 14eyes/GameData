require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73028 = class("Quest73028", QuestActorProxy)
Quest73028.defaultAlias = "Quest73028"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7302801"] = self.OnSubStart7302801,
        ["7302804"] = self.OnSubStart7302804,
        ["7302802"] = self.OnSubStart7302802,
        ["7302805"] = self.OnSubStart7302805,
        ["7302803"] = self.OnSubStart7302803,
        ["7302806"] = self.OnSubStart7302806
    }
end

function Quest73028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7302801"] = self.OnSubFinish7302801,
        ["7302804"] = self.OnSubFinish7302804,
        ["7302802"] = self.OnSubFinish7302802,
        ["7302805"] = self.OnSubFinish7302805,
        ["7302803"] = self.OnSubFinish7302803,
        ["7302806"] = self.OnSubFinish7302806
    }
end

function Quest73028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73028:Start()
    print("Start")
end

function Quest73028:OnDestroy()
    print("OnDestroy")
end

function Quest73028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73028:OnSubStart7302801(arg1)
    print("OnSubStart7302801")
    actorMgr:CreateActorWithPos("Q7302801Trigger", "Actor/Gadget/Q7302801Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREAGEAR_A").pos, sceneData:GetDummyPoint(3, "WQL1_AREAGEAR_A").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73028Trigger", "Actor/Gadget/Q73028Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREAGEAR_A_POS").pos, sceneData:GetDummyPoint(3, "WQL1_AREAGEAR_A_POS").rot, true, false, 3)
end

function Quest73028:OnSubFinish7302801(arg1)
    print("OnSubFinish7302801")
end

function Quest73028:OnSubStart7302804(arg1)
    print("OnSubStart7302804")
end

function Quest73028:OnSubFinish7302804(arg1)
    print("OnSubFinish7302804")
end

function Quest73028:OnSubStart7302802(arg1)
    print("OnSubStart7302802")
    actorMgr:CreateActorWithPos("Q7302802Trigger", "Actor/Gadget/Q7302802Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREAGEAR_B").pos, sceneData:GetDummyPoint(3, "WQL1_AREAGEAR_B").rot, true, false, 3)
end

function Quest73028:OnSubFinish7302802(arg1)
    print("OnSubFinish7302802")
end

function Quest73028:OnSubStart7302805(arg1)
    print("OnSubStart7302805")
    actorMgr:CreateActorWithPos("Q73028Trigger1", "Actor/Gadget/Q73028Trigger1", 70900002, 0, {x = -1078.161, y = 158.448, z = 2188.554}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73028:OnSubFinish7302805(arg1)
    print("OnSubFinish7302805")
    self:ActorDestroy("Q73028Trigger1")
end

function Quest73028:OnSubStart7302803(arg1)
    print("OnSubStart7302803")
    self:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 1)
end

function Quest73028:OnSubFinish7302803(arg1)
    print("OnSubFinish7302803")
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
end

function Quest73028:OnSubStart7302806(arg1)
    print("OnSubStart7302806")
end

function Quest73028:OnSubFinish7302806(arg1)
    print("OnSubFinish7302806")
end

return Quest73028
