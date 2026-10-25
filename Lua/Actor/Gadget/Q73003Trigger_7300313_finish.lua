require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73003Trigger_7300313_finish = class("Q73003Trigger_7300313_finish", GadgetActorProxy)
Q73003Trigger_7300313_finish.defaultAlias = "Q73003Trigger_7300313_finish"
local Q73003ClientConfig = require("Quest/Client/Q73003ClientConfig")

local subIDs = Q73003ClientConfig.SubIDs
local npcs = Q73003ClientConfig.Npcs
local datas = Q73003ClientConfig.Datas

function Q73003Trigger_7300313_finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73003Trigger_7300313_finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73003Trigger_7300313_finish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300313)
    self:DestroySelf()
end

function Q73003Trigger_7300313_finish:TriggerOut()
    print("TriggerOut")
end

return Q73003Trigger_7300313_finish
