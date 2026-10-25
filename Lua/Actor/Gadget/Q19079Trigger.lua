require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19079Trigger = class("Q19079Trigger", GadgetActorProxy)
Q19079Trigger.defaultAlias = "Q19079Trigger"
local Q19079ClientConfig = require("Quest/Client/Q19079ClientConfig")

local this
local subIDs = Q19079ClientConfig.SubIDs
local npcs = Q19079ClientConfig.Npcs
local points = Q19079ClientConfig.Points
local datas = Q19079ClientConfig.Datas

function Q19079Trigger:OnPostDataPrepare()
    print("[MainId: 19079][Trigger: Q19079Trigger] OnPostDataPrepare")
    this = self
end

function Q19079Trigger:OnPostComponentPrepare()
    print("[MainId: 19079][Trigger: Q19079Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19079Trigger:TriggerIn()
    print("[MainId: 19079][Trigger: Q19079Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1907901)
    this:DestroySelf()
end

function Q19079Trigger:PreTriggerIn()
    print("[MainId: 19079][Trigger: Q19079Trigger] PreTriggerIn")
end

function Q19079Trigger:LightUpTriggerIn()
    print("[MainId: 19079][Trigger: Q19079Trigger] LightUpTriggerIn")
end

function Q19079Trigger:TriggerOut()
    print("[MainId: 19079][Trigger: Q19079Trigger] TriggerOut")
end

return Q19079Trigger
