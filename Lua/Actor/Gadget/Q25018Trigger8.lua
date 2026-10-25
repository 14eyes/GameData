require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q25018Trigger8 = class("Q25018Trigger8", GadgetActorProxy)
Q25018Trigger8.defaultAlias = "Q25018Trigger8"
local Q25018ClientConfig = require("Quest/Client/Q25018ClientConfig")

local this
local subIDs = Q25018ClientConfig.SubIDs
local npcs = Q25018ClientConfig.Npcs
local points = Q25018ClientConfig.Points
local datas = Q25018ClientConfig.Datas

function Q25018Trigger8:OnPostDataPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger8] OnPostDataPrepare")
    this = self
end

function Q25018Trigger8:OnPostComponentPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger8] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25018)
end

function Q25018Trigger8:TriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger8] TriggerIn")
    actorUtils.FinishQuestID(false, 2501813)
    this:DestroySelf()
end

function Q25018Trigger8:PreTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger8] PreTriggerIn")
end

function Q25018Trigger8:LightUpTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger8] LightUpTriggerIn")
end

function Q25018Trigger8:TriggerOut()
    print("[MainId: 25018][Trigger: Q25018Trigger8] TriggerOut")
end

return Q25018Trigger8
