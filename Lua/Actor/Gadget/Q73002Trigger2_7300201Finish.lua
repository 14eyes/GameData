require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73002Trigger2_7300201Finish = class("Q73002Trigger2_7300201Finish", GadgetActorProxy)
Q73002Trigger2_7300201Finish.defaultAlias = "Q73002Trigger2_7300201Finish"
local Q73002ClientConfig = require("Quest/Client/Q73002ClientConfig")

local subIDs = Q73002ClientConfig.SubIDs
local npcs = Q73002ClientConfig.Npcs
local datas = Q73002ClientConfig.Datas

function Q73002Trigger2_7300201Finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73002Trigger2_7300201Finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73002Trigger2_7300201Finish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300201)
    self:DestroySelf()
end

function Q73002Trigger2_7300201Finish:TriggerOut()
    print("TriggerOut")
end

return Q73002Trigger2_7300201Finish
