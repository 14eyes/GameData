require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73037Trigger_gobackfail = class("Q73037Trigger_gobackfail", GadgetActorProxy)
Q73037Trigger_gobackfail.defaultAlias = "Q73037Trigger_gobackfail"
local Q73037ClientConfig = require("Quest/Client/Q73037ClientConfig")

local subIDs = Q73037ClientConfig.SubIDs
local npcs = Q73037ClientConfig.Npcs
local datas = Q73037ClientConfig.Datas

function Q73037Trigger_gobackfail:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73037Trigger_gobackfail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(30, 10, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73037Trigger_gobackfail:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(true, 7303704)
    actorUtils.FinishQuestID(true, 7303705)
    actorUtils.FinishQuestID(true, 7303706)
    self:DestroySelf()
end

function Q73037Trigger_gobackfail:TriggerOut()
    print("TriggerOut")
end

return Q73037Trigger_gobackfail
