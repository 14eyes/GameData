require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005702Trigger2 = class("Q4005702Trigger2", GadgetActorProxy)
Q4005702Trigger2.defaultAlias = "Q4005702Trigger2"
local Q40057ClientConfig = require("Quest/Client/Q40057ClientConfig")

local subIDs = Q40057ClientConfig.SubIDs
local npcs = Q40057ClientConfig.Npcs
local datas = Q40057ClientConfig.Datas

function Q4005702Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005702Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(40, 10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005702Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005702)
    self:DestroySelf()
end

function Q4005702Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q4005702Trigger2
