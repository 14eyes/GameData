require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318631_DoorRmd = class("Q7318631_DoorRmd", GadgetActorProxy)
Q7318631_DoorRmd.defaultAlias = "Q7318631_DoorRmd"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318631_DoorRmd:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318631_DoorRmd:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318631_DoorRmd:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73186")
    actor:ClearNarratorTask()
    actor:NarratorOnlyTaskByData(datas.Rmd_31Door)
    this:DestroySelf()
end

function Q7318631_DoorRmd:TriggerOut()
    print("TriggerOut")
end

return Q7318631_DoorRmd
