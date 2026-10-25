require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72262Trigger01 = class("Q72262Trigger01", GadgetActorProxy)
Q72262Trigger01.defaultAlias = "Q72262Trigger01"
local Q72262ClientConfig = require("Quest/Client/Q72262ClientConfig")

local subIDs = Q72262ClientConfig.SubIDs
local npcs = Q72262ClientConfig.Npcs
local datas = Q72262ClientConfig.Datas

function Q72262Trigger01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72262Trigger01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72262Trigger01:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72262"):NarratorOnlyTask(datas.paimeng03, nil, "")
    self:DestroySelf()
end

function Q72262Trigger01:TriggerOut()
    print("TriggerOut")
end

return Q72262Trigger01
