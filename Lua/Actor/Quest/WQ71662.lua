require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71662 = class("Quest71662", QuestActorProxy)
Quest71662.defaultAlias = "Quest71662"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71662:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71662:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7166201"] = self.OnSubStart7166201,
        ["7166202"] = self.OnSubStart7166202,
        ["7166203"] = self.OnSubStart7166203,
        ["7166208"] = self.OnSubStart7166208,
        ["7166209"] = self.OnSubStart7166209,
        ["7166204"] = self.OnSubStart7166204,
        ["7166206"] = self.OnSubStart7166206,
        ["7166205"] = self.OnSubStart7166205,
        ["7166207"] = self.OnSubStart7166207
    }
end

function Quest71662:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7166201"] = self.OnSubFinish7166201,
        ["7166202"] = self.OnSubFinish7166202,
        ["7166203"] = self.OnSubFinish7166203,
        ["7166208"] = self.OnSubFinish7166208,
        ["7166209"] = self.OnSubFinish7166209,
        ["7166204"] = self.OnSubFinish7166204,
        ["7166206"] = self.OnSubFinish7166206,
        ["7166205"] = self.OnSubFinish7166205,
        ["7166207"] = self.OnSubFinish7166207
    }
end

function Quest71662:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71662:Start()
    print("Start")
end

function Quest71662:OnDestroy()
    print("OnDestroy")
end

function Quest71662:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc2078Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30153Data.alias, 3)
end

function Quest71662:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71662:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2078Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30153Data.alias, 3)
    self:ActorDestroy("Q71662Trigger")
end

function Quest71662:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71662:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71662:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest71662:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71662:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7166209")
        actorUtils.FinishQuestID(false, 7166209)
    end
end

function Quest71662:OnSubStart7166201(arg1)
    print("OnSubStart7166201")
    self:NpcCreate(arg1, npcs.Npc2078Data.id, 1)
end

function Quest71662:OnSubFinish7166201(arg1)
    print("OnSubFinish7166201")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2078Data.alias)
end

function Quest71662:OnSubStart7166202(arg1)
    print("OnSubStart7166202")
    self:NpcCreate(arg1, npcs.Npc30153Data.id, 1)
end

function Quest71662:OnSubFinish7166202(arg1)
    print("OnSubFinish7166202")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc30153Data.alias)
end

function Quest71662:OnSubStart7166203(arg1)
    print("OnSubStart7166203")
end

function Quest71662:OnSubFinish7166203(arg1)
    print("OnSubFinish7166203")
end

function Quest71662:OnSubStart7166208(arg1)
    print("OnSubStart7166208")
    self:NpcCreate(arg1, npcs.Npc30153Data.id, 1)
    actorMgr:CreateActorWithPos("Q71662Trigger", "Actor/Gadget/Q71662Trigger", 70900002, 0, sceneData:GetDummyPoint(45058, "Q7166204_N1005").pos, sceneData:GetDummyPoint(45058, "Q7166204_N1005").rot, true, false, 45058)
end

function Quest71662:OnSubFinish7166208(arg1)
    print("OnSubFinish7166208")
    self:ActorDestroy("Q71662Trigger")
end

function Quest71662:OnSubStart7166209(arg1)
    print("OnSubStart7166209")
end

function Quest71662:OnSubFinish7166209(arg1)
    print("OnSubFinish7166209")
end

function Quest71662:OnSubStart7166204(arg1)
    print("OnSubStart7166204")
end

function Quest71662:OnSubFinish7166204(arg1)
    print("OnSubFinish7166204")
end

function Quest71662:OnSubStart7166206(arg1)
    print("OnSubStart7166206")
end

function Quest71662:OnSubFinish7166206(arg1)
    print("OnSubFinish7166206")
end

function Quest71662:OnSubStart7166205(arg1)
    print("OnSubStart7166205")
end

function Quest71662:OnSubFinish7166205(arg1)
    print("OnSubFinish7166205")
end

function Quest71662:OnSubStart7166207(arg1)
    print("OnSubStart7166207")
end

function Quest71662:OnSubFinish7166207(arg1)
    print("OnSubFinish7166207")
    self:ShowBlackScreen(0.5, 1.54, 0.5, function(arg1_2)
        arg1_2:NpcDestroy(npcs.Npc30153Data.alias, 45058)
        arg1_2:TransmitPlayerById(arg1, 1)
    end, nil, nil, "", false, true)

    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(1129)
    end)
end

return Quest71662
