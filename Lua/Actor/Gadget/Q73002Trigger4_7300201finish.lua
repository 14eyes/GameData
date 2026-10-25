require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73002Trigger4_7300201finish = class("Q73002Trigger4_7300201finish", GadgetActorProxy)
Q73002Trigger4_7300201finish.defaultAlias = "Q73002Trigger4_7300201finish"
local Q73002ClientConfig = require("Quest/Client/Q73002ClientConfig")

local subIDs = Q73002ClientConfig.SubIDs
local npcs = Q73002ClientConfig.Npcs
local datas = Q73002ClientConfig.Datas

function Q73002Trigger4_7300201finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73002Trigger4_7300201finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73002Trigger4_7300201finish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300201)
    self:DestroySelf()
end

function Q73002Trigger4_7300201finish:TriggerOut()
    print("TriggerOut")
end

return Q73002Trigger4_7300201finish
