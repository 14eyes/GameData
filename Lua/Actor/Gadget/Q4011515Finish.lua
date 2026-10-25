require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011515Finish = class("Q4011515Finish", GadgetActorProxy)
Q4011515Finish.defaultAlias = "Q4011515Finish"
local Q40115ClientConfig = require("Quest/Client/Q40115ClientConfig")

local this
local subIDs = Q40115ClientConfig.SubIDs
local npcs = Q40115ClientConfig.Npcs
local points = Q40115ClientConfig.Points

function Q4011515Finish:OnPostDataPrepare()
    print("[MainId: 40115][Trigger: Q4011515Finish] OnPostDataPrepare")
    this = self
end

function Q4011515Finish:OnPostComponentPrepare()
    print("[MainId: 40115][Trigger: Q4011515Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011515Finish:TriggerIn()
    print("[MainId: 40115][Trigger: Q4011515Finish] TriggerIn")
    actorMgr:GetActor("40115"):RequestInteraction(npcs.Npc1037Data.alias)
    this:DestroySelf()
end

function Q4011515Finish:PreTriggerIn()
    print("[MainId: 40115][Trigger: Q4011515Finish] PreTriggerIn")
end

function Q4011515Finish:LightUpTriggerIn()
    print("[MainId: 40115][Trigger: Q4011515Finish] LightUpTriggerIn")
end

function Q4011515Finish:TriggerOut()
    print("[MainId: 40115][Trigger: Q4011515Finish] TriggerOut")
end

return Q4011515Finish
