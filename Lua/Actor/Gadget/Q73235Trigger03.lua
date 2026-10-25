require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73235Trigger03 = class("Q73235Trigger03", GadgetActorProxy)
Q73235Trigger03.defaultAlias = "Q73235Trigger03"
local Q73235ClientConfig = require("Quest/Client/Q73235ClientConfig")

local subIDs = Q73235ClientConfig.SubIDs
local npcs = Q73235ClientConfig.Npcs
local datas = Q73235ClientConfig.Datas

function Q73235Trigger03:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73235Trigger03:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73235Trigger03:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323503)
    self:DestroySelf()
end

function Q73235Trigger03:TriggerOut()
    print("TriggerOut")
end

return Q73235Trigger03
