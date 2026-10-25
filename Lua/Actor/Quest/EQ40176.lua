require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40176 = class("Quest40176", QuestActorProxy)
Quest40176.defaultAlias = "Quest40176"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest40176:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40176:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4017601"] = self.OnSubStart4017601}
end

function Quest40176:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4017601"] = self.OnSubFinish4017601}
end

function Quest40176:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40176:Start()
    print("Start")
end

function Quest40176:OnDestroy()
    print("OnDestroy")
end

function Quest40176:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40176:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40176:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q40176Trigger1")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:RemoveLocalGadget(73015011, "1")
end

function Quest40176:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40176:OnSubStart4017601(arg1)
    print("OnSubStart4017601")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q40176Trigger1", "Actor/Gadget/Q40176Trigger1", 70900002, 0, points._Q40176Trigger1Point_.pos, points._Q40176Trigger1Point_.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40176):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:CreateLocalGadget(73015011, "1", {x = -1878.516, y = 55.076, z = 9649.89}, {x = 0, y = 65, z = 0}, 3, nil, nil, false, 0, true)
    end)
end

function Quest40176:OnSubFinish4017601(arg1)
    print("OnSubFinish4017601")
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 3)
    this:RemoveLocalGadget(73015011, "1")
end

return Quest40176
