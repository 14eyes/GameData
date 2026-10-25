require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19073Trigger = class("Q19073Trigger", GadgetActorProxy)
Q19073Trigger.defaultAlias = "Q19073Trigger"
local Q19073ClientConfig = require("Quest/Client/Q19073ClientConfig")

local this
local subIDs = Q19073ClientConfig.SubIDs
local npcs = Q19073ClientConfig.Npcs
local points = Q19073ClientConfig.Points
local datas = Q19073ClientConfig.Datas

function Q19073Trigger:OnPostDataPrepare()
    print("[MainId: 19073][Trigger: Q19073Trigger] OnPostDataPrepare")
    this = self
end

function Q19073Trigger:OnPostComponentPrepare()
    print("[MainId: 19073][Trigger: Q19073Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19073Trigger:TriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1907301)
    this:DestroySelf()
end

function Q19073Trigger:PreTriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger] PreTriggerIn")
end

function Q19073Trigger:LightUpTriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger] LightUpTriggerIn")
end

function Q19073Trigger:TriggerOut()
    print("[MainId: 19073][Trigger: Q19073Trigger] TriggerOut")
end

return Q19073Trigger
