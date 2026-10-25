require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217308rmd = class("Q7217308rmd", GadgetActorProxy)
Q7217308rmd.defaultAlias = "Q7217308rmd"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217308rmd:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217308rmd:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217308rmd:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.rmd_7217308, nil, "")
    self:DestroySelf()
end

function Q7217308rmd:TriggerOut()
    print("TriggerOut")
end

return Q7217308rmd
