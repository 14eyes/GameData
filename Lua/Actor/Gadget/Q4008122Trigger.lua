require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008122Trigger = class("Q4008122Trigger", GadgetActorProxy)
Q4008122Trigger.defaultAlias = "Q4008122Trigger"
local Q40081ClientConfig = require("Quest/Client/Q40081ClientConfig")

local subIDs = Q40081ClientConfig.SubIDs
local npcs = Q40081ClientConfig.Npcs
local datas = Q40081ClientConfig.Datas

function Q4008122Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008122Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008122Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40081"):ShowTutorialDialog(1281, function(arg1)
        actorUtils.FinishQuestID(false, 4008122)
    end)

    self:DestroySelf()
end

function Q4008122Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008122Trigger
