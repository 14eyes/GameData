require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217341rmd = class("Q7217341rmd", GadgetActorProxy)
Q7217341rmd.defaultAlias = "Q7217341rmd"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217341rmd:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217341rmd:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(90, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217341rmd:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.rmd_7217341, nil, "")
    self:DestroySelf()
end

function Q7217341rmd:TriggerOut()
    print("TriggerOut")
end

return Q7217341rmd
