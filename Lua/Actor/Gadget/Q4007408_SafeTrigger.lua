require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007408_SafeTrigger = class("Q4007408_SafeTrigger", GadgetActorProxy)
Q4007408_SafeTrigger.defaultAlias = "Q4007408_SafeTrigger"
local Q40074ClientConfig = require("Quest/Client/Q40074ClientConfig")

local subIDs = Q40074ClientConfig.SubIDs
local npcs = Q40074ClientConfig.Npcs
local datas = Q40074ClientConfig.Datas

function Q4007408_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007408_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(18, 18, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007408_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007408)
    self:DestroySelf()
end

function Q4007408_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4007408_SafeTrigger
