require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73002Trigger5_7300206Finsh = class("Q73002Trigger5_7300206Finsh", GadgetActorProxy)
Q73002Trigger5_7300206Finsh.defaultAlias = "Q73002Trigger5_7300206Finsh"
local Q73002ClientConfig = require("Quest/Client/Q73002ClientConfig")

local subIDs = Q73002ClientConfig.SubIDs
local npcs = Q73002ClientConfig.Npcs
local datas = Q73002ClientConfig.Datas

function Q73002Trigger5_7300206Finsh:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73002Trigger5_7300206Finsh:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73002Trigger5_7300206Finsh:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300206)
    self:DestroySelf()
end

function Q73002Trigger5_7300206Finsh:TriggerOut()
    print("TriggerOut")
end

return Q73002Trigger5_7300206Finsh
