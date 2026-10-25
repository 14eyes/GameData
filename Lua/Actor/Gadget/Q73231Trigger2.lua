require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73231Trigger2 = class("Q73231Trigger2", GadgetActorProxy)
Q73231Trigger2.defaultAlias = "Q73231Trigger2"
local Q73231ClientConfig = require("Quest/Client/Q73231ClientConfig")

local this
local subIDs = Q73231ClientConfig.SubIDs
local npcs = Q73231ClientConfig.Npcs
local points = Q73231ClientConfig.Points
local datas = Q73231ClientConfig.Datas

function Q73231Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73231Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73231Trigger2:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
end

function Q73231Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q73231Trigger2
