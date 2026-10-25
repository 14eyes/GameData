require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217309_rmd = class("Q7217309_rmd", GadgetActorProxy)
Q7217309_rmd.defaultAlias = "Q7217309_rmd"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217309_rmd:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217309_rmd:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217309_rmd:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.rmd_7217309, nil, "")
    self:DestroySelf()
end

function Q7217309_rmd:TriggerOut()
    print("TriggerOut")
end

return Q7217309_rmd
