require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217302rmda = class("Q7217302rmda", GadgetActorProxy)
Q7217302rmda.defaultAlias = "Q7217302rmda"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217302rmda:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217302rmda:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217302rmda:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):NarratorOnlyTask(datas.rmda7217302, nil, "")
    self:DestroySelf()
end

function Q7217302rmda:TriggerOut()
    print("TriggerOut")
end

return Q7217302rmda
