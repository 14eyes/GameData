require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217306_rmdc = class("Q7217306_rmdc", GadgetActorProxy)
Q7217306_rmdc.defaultAlias = "Q7217306_rmdc"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217306_rmdc:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217306_rmdc:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(95, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217306_rmdc:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.rmdc_7217306, nil, "")
    self:DestroySelf()
end

function Q7217306_rmdc:TriggerOut()
    print("TriggerOut")
end

return Q7217306_rmdc
