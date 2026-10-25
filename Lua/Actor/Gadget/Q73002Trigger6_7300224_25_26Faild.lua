require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73002Trigger6_7300224_25_26Faild = class("Q73002Trigger6_7300224_25_26Faild", GadgetActorProxy)
Q73002Trigger6_7300224_25_26Faild.defaultAlias = "Q73002Trigger6_7300224_25_26Faild"
local Q73002ClientConfig = require("Quest/Client/Q73002ClientConfig")

local subIDs = Q73002ClientConfig.SubIDs
local npcs = Q73002ClientConfig.Npcs
local datas = Q73002ClientConfig.Datas

function Q73002Trigger6_7300224_25_26Faild:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73002Trigger6_7300224_25_26Faild:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73002Trigger6_7300224_25_26Faild:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(true, 7300227)
end

function Q73002Trigger6_7300224_25_26Faild:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7300224)
    actorUtils.FinishQuestID(true, 7300226)
    actorUtils.FinishQuestID(true, 7300225)
end

return Q73002Trigger6_7300224_25_26Faild
