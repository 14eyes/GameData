require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23011 = class("Quest23011", QuestActorProxy)
Quest23011.defaultAlias = "Quest23011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2301101"] = self.OnSubStart2301101,
        ["2301102"] = self.OnSubStart2301102,
        ["2301107"] = self.OnSubStart2301107,
        ["2301103"] = self.OnSubStart2301103,
        ["2301104"] = self.OnSubStart2301104,
        ["2301105"] = self.OnSubStart2301105,
        ["2301106"] = self.OnSubStart2301106
    }
end

function Quest23011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2301101"] = self.OnSubFinish2301101,
        ["2301102"] = self.OnSubFinish2301102,
        ["2301107"] = self.OnSubFinish2301107,
        ["2301103"] = self.OnSubFinish2301103,
        ["2301104"] = self.OnSubFinish2301104,
        ["2301105"] = self.OnSubFinish2301105,
        ["2301106"] = self.OnSubFinish2301106
    }
end

function Quest23011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["2301103"] = self.OnSubFailed2301103}
end

function Quest23011:Start()
    print("Start")
end

function Quest23011:OnDestroy()
    print("OnDestroy")
end

function Quest23011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23011:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1517Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4052Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2301103Trigger", 3, false)
end

function Quest23011:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23011:OnSubStart2301101(arg1)
    print("OnSubStart2301101")
    self:CreateQuestNpc(arg1, npcs.Npc1517Data.id, 1)
end

function Quest23011:OnSubFinish2301101(arg1)
    print("OnSubFinish2301101")
end

function Quest23011:OnSubStart2301102(arg1)
    print("OnSubStart2301102")
    self:CreateQuestNpc(arg1, npcs.Npc4052Data.id, 1)
end

function Quest23011:OnSubFinish2301102(arg1)
    print("OnSubFinish2301102")
end

function Quest23011:OnSubStart2301107(arg1)
    print("OnSubStart2301107")
end

function Quest23011:OnSubFinish2301107(arg1)
    print("OnSubFinish2301107")
end

function Quest23011:OnSubStart2301103(arg1)
    print("OnSubStart2301103")
    self:CreateQuestNpc(arg1, npcs.Npc1517Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4052Data.id, 2)
    actorMgr:CreateActorWithPos("Q2301103Trigger", "Actor/Gadget/Q2301103Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303203_GUIDE").pos, sceneData:GetDummyPoint(3, "Q2303203_GUIDE").rot, true, false, 3)
end

function Quest23011:OnSubFinish2301103(arg1)
    print("OnSubFinish2301103")
end

function Quest23011:OnSubFailed2301103(arg1)
    print("OnSubFailed2301103")
end

function Quest23011:OnSubStart2301104(arg1)
    print("OnSubStart2301104")
end

function Quest23011:OnSubFinish2301104(arg1)
    print("OnSubFinish2301104")
    self:NarratorOnlyTask(datas.NarratorTable04, nil, "")
end

function Quest23011:OnSubStart2301105(arg1)
    print("OnSubStart2301105")
end

function Quest23011:OnSubFinish2301105(arg1)
    print("OnSubFinish2301105")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4052Data.alias)
end

function Quest23011:OnSubStart2301106(arg1)
    print("OnSubStart2301106")
end

function Quest23011:OnSubFinish2301106(arg1)
    print("OnSubFinish2301106")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1517Data.alias)
end

return Quest23011
