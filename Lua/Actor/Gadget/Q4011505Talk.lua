require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011505Talk = class("Q4011505Talk", GadgetActorProxy)
Q4011505Talk.defaultAlias = "Q4011505Talk"
local Q40115ClientConfig = require("Quest/Client/Q40115ClientConfig")

local this
local subIDs = Q40115ClientConfig.SubIDs
local npcs = Q40115ClientConfig.Npcs
local points = Q40115ClientConfig.Points

function Q4011505Talk:OnPostDataPrepare()
    print("[MainId: 40115][Trigger: Q4011505Talk] OnPostDataPrepare")
    this = self
end

function Q4011505Talk:OnPostComponentPrepare()
    print("[MainId: 40115][Trigger: Q4011505Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011505Talk:TriggerIn()
    print("[MainId: 40115][Trigger: Q4011505Talk] TriggerIn")
end

function Q4011505Talk:PreTriggerIn()
    print("[MainId: 40115][Trigger: Q4011505Talk] PreTriggerIn")
end

function Q4011505Talk:LightUpTriggerIn()
    print("[MainId: 40115][Trigger: Q4011505Talk] LightUpTriggerIn")
    actorMgr:GetActor("40115")
    actorMgr:GetActor("40115"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40115")
        actor:CreateQuestNpcById(4011505, npcs.Npc1029Data.id, 0)
        actor:RequestInteraction(npcs.Npc1029Data.alias)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q4011505Talk:TriggerOut()
    print("[MainId: 40115][Trigger: Q4011505Talk] TriggerOut")
end

return Q4011505Talk
