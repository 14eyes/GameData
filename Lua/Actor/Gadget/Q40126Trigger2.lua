require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40126Trigger2 = class("Q40126Trigger2", GadgetActorProxy)
Q40126Trigger2.defaultAlias = "Q40126Trigger2"
local Q40126ClientConfig = require("Quest/Client/Q40126ClientConfig")

local this
local subIDs = Q40126ClientConfig.SubIDs
local npcs = Q40126ClientConfig.Npcs
local points = Q40126ClientConfig.Points
local datas = Q40126ClientConfig.Datas

function Q40126Trigger2:OnPostDataPrepare()
    print("[MainId: 40126][Trigger: Q40126Trigger2] OnPostDataPrepare")
    this = self
end

function Q40126Trigger2:OnPostComponentPrepare()
    print("[MainId: 40126][Trigger: Q40126Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40126Trigger2:TriggerIn()
    print("[MainId: 40126][Trigger: Q40126Trigger2] TriggerIn")
    actorMgr:GetActor("40126"):RequestInteraction(npcs.Npc13431Data.alias)
    this:DestroySelf()
end

function Q40126Trigger2:PreTriggerIn()
    print("[MainId: 40126][Trigger: Q40126Trigger2] PreTriggerIn")
end

function Q40126Trigger2:LightUpTriggerIn()
    print("[MainId: 40126][Trigger: Q40126Trigger2] LightUpTriggerIn")
end

function Q40126Trigger2:TriggerOut()
    print("[MainId: 40126][Trigger: Q40126Trigger2] TriggerOut")
end

return Q40126Trigger2
