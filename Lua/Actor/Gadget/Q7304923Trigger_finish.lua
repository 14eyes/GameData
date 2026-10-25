require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7304923Trigger_finish = class("Q7304923Trigger_finish", GadgetActorProxy)
Q7304923Trigger_finish.defaultAlias = "Q7304923Trigger_finish"
local Q73049ClientConfig = require("Quest/Client/Q73049ClientConfig")

local subIDs = Q73049ClientConfig.SubIDs
local npcs = Q73049ClientConfig.Npcs
local datas = Q73049ClientConfig.Datas

function Q7304923Trigger_finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7304923Trigger_finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7304923Trigger_finish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7304923)
    self:DestroySelf()
end

function Q7304923Trigger_finish:TriggerOut()
    print("TriggerOut")
end

return Q7304923Trigger_finish
