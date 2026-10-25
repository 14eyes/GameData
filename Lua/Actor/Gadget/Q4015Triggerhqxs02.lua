require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4015Triggerhqxs02 = class("Q4015Triggerhqxs02", GadgetActorProxy)
Q4015Triggerhqxs02.defaultAlias = "Q4015Triggerhqxs02"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q4015Triggerhqxs02:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q4015Triggerhqxs02] OnPostDataPrepare")
    this = self
end

function Q4015Triggerhqxs02:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q4015Triggerhqxs02] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4015Triggerhqxs02:TriggerIn()
    print("[MainId: 4015][Trigger: Q4015Triggerhqxs02] TriggerIn")
    actorMgr:GetActor("4015"):RequestInteraction(npcs.Npc13553Data.alias, "", true)
    this:DestroySelf()
end

function Q4015Triggerhqxs02:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q4015Triggerhqxs02] PreTriggerIn")
end

function Q4015Triggerhqxs02:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q4015Triggerhqxs02] LightUpTriggerIn")
end

function Q4015Triggerhqxs02:TriggerOut()
    print("[MainId: 4015][Trigger: Q4015Triggerhqxs02] TriggerOut")
end

return Q4015Triggerhqxs02
