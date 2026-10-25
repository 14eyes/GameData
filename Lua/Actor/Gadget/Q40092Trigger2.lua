require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40092Trigger2 = class("Q40092Trigger2", GadgetActorProxy)
Q40092Trigger2.defaultAlias = "Q40092Trigger2"
local Q40092ClientConfig = require("Quest/Client/Q40092ClientConfig")

local this
local subIDs = Q40092ClientConfig.SubIDs
local npcs = Q40092ClientConfig.Npcs
local gadgets = Q40092ClientConfig.Gadgets
local datas = Q40092ClientConfig.Datas

function Q40092Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40092Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40092Trigger2:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("40092"):NarratorOnlyTaskByData(datas.NarratorWithId2)
end

function Q40092Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q40092Trigger2
