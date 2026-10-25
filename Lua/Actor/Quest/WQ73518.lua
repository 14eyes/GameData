require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73518 = class("Quest73518", QuestActorProxy)
Quest73518.defaultAlias = "Quest73518"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest73518:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73518:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7351802"] = self.OnSubStart7351802, ["7351801"] = self.OnSubStart7351801}
end

function Quest73518:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7351802"] = self.OnSubFinish7351802, ["7351801"] = self.OnSubFinish7351801}
end

function Quest73518:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73518:Start()
    print("Start")
end

function Quest73518:OnDestroy()
    print("OnDestroy")
end

function Quest73518:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73518:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73518:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
    this:ActorDestroy("Q73518Trigger")
    this:UnCallFunc(function(arg1)
        this:CustmiseFunction()
    end)

    this:RemoveLocalGadget(70290926, "1")
end

function Quest73518:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73518:CustmiseFunction()
    this:CallDelay(1, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorMgr:CreateActorWithPos("Q73518Trigger", "Actor/Gadget/Q73518Trigger", 70900002, 0, points.TPos_Q73518Trigger.pos, points.TPos_Q73518Trigger.rot, true, false, 3)
        end)
    end)
end

function Quest73518:OnSubStart7351802(arg1)
    print("OnSubStart7351802")
    if this:GetQuestVar(7351802, 1) == 1 then
        actorUtils.FinishQuestID(false, 7351802)
    else
        this:CustmiseFunction()
    end
end

function Quest73518:OnSubFinish7351802(arg1)
    print("OnSubFinish7351802")
end

function Quest73518:OnSubStart7351801(arg1)
    print("OnSubStart7351801")
    this:CreateLocalGadget(70290926, "1", {x = -1775.813, y = 162.52, z = 5732.777}, {x = 22.262, y = 141.572, z = 0.0}, 3, nil, nil, 0, false)
    this:CreateQuestNpc(arg1, npcs.Npc30342Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc30343Data.id, 2)
    if this:GetQuestVar(7351801, 1) ~= 1 then
        this:RequestInteraction(npcs.Npc30342Data.alias)
    end
end

function Quest73518:OnSubFinish7351801(arg1)
    print("OnSubFinish7351801")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
    this:RemoveLocalGadget(70290926, "1")
end

return Quest73518
