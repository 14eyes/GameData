require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800512_TriggerIn = class("Q800512_TriggerIn", GadgetActorProxy)
Q800512_TriggerIn.defaultAlias = "Q800512_TriggerIn"
local Q8005ClientConfig = require("Quest/Client/Q8005ClientConfig")

local subIDs = Q8005ClientConfig.SubIDs
local npcs = Q8005ClientConfig.Npcs
local datas = Q8005ClientConfig.Datas

function Q800512_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800512_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(12.5, 10, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800512_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 800512)
    self:DestroySelf()
end

function Q800512_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800512_TriggerIn
