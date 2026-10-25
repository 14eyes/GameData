require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73002Trigger2_7300217finish = class("Q73002Trigger2_7300217finish", GadgetActorProxy)
Q73002Trigger2_7300217finish.defaultAlias = "Q73002Trigger2_7300217finish"
local Q73002ClientConfig = require("Quest/Client/Q73002ClientConfig")

local subIDs = Q73002ClientConfig.SubIDs
local npcs = Q73002ClientConfig.Npcs
local datas = Q73002ClientConfig.Datas

function Q73002Trigger2_7300217finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73002Trigger2_7300217finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73002Trigger2_7300217finish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300217)
    self:DestroySelf()
end

function Q73002Trigger2_7300217finish:TriggerOut()
    print("TriggerOut")
end

return Q73002Trigger2_7300217finish
