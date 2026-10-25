require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q466trigger4 = class("Q466trigger4", GadgetActorProxy)
Q466trigger4.defaultAlias = "Q466trigger4"
local Q466ClientConfig = require("Quest/Client/Q466ClientConfig")

function Q466trigger4:OnPostDataPrepare() end

function Q466trigger4:OnPostComponentPrepare()
    self:AddComponentTrigger(165, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q466trigger4:TriggerIn() end

function Q466trigger4:TriggerOut()
    print("Out Q466trigger4")
    self:NarratorOnlyTask(Q466ClientConfig.NarratorData.Story6)
end

return Q466trigger4
