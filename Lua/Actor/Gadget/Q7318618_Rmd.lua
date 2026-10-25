require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318618_Rmd = class("Q7318618_Rmd", GadgetActorProxy)
Q7318618_Rmd.defaultAlias = "Q7318618_Rmd"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318618_Rmd:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318618_Rmd:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318618_Rmd:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73186"):NarratorOnlyTaskByData(datas.Rmd_7318618)
    this:DestroySelf()
end

function Q7318618_Rmd:TriggerOut()
    print("TriggerOut")
end

return Q7318618_Rmd
