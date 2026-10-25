require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011514Talk = class("Q4011514Talk", GadgetActorProxy)
Q4011514Talk.defaultAlias = "Q4011514Talk"
local Q40115ClientConfig = require("Quest/Client/Q40115ClientConfig")

local this
local subIDs = Q40115ClientConfig.SubIDs
local npcs = Q40115ClientConfig.Npcs
local points = Q40115ClientConfig.Points

function Q4011514Talk:OnPostDataPrepare()
    print("[MainId: 40115][Trigger: Q4011514Talk] OnPostDataPrepare")
    this = self
end

function Q4011514Talk:OnPostComponentPrepare()
    print("[MainId: 40115][Trigger: Q4011514Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011514Talk:TriggerIn()
    print("[MainId: 40115][Trigger: Q4011514Talk] TriggerIn")
end

function Q4011514Talk:PreTriggerIn()
    print("[MainId: 40115][Trigger: Q4011514Talk] PreTriggerIn")
end

function Q4011514Talk:LightUpTriggerIn()
    print("[MainId: 40115][Trigger: Q4011514Talk] LightUpTriggerIn")
    actorMgr:GetActor("40115")
    actorMgr:GetActor("40115"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40115")
        actor:CreateQuestNpcById(4011514, npcs.Npc1029Data.id, 0)
        actor:RequestInteraction(npcs.Npc1029Data.alias)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q4011514Talk:TriggerOut()
    print("[MainId: 40115][Trigger: Q4011514Talk] TriggerOut")
end

return Q4011514Talk
