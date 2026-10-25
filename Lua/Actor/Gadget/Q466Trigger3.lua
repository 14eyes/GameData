require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q466trigger3 = class("Q466trigger3", GadgetActorProxy)
Q466trigger3.defaultAlias = "Q466trigger3"
local Q466ClientConfig = require("Quest/Client/Q466ClientConfig")

function Q466trigger3:OnPostDataPrepare() end

function Q466trigger3:OnPostComponentPrepare()
    self:AddComponentTrigger(90, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q466trigger3:TriggerIn() end

function Q466trigger3:TriggerOut()
    print("Out Q466trigger3")
    self:NarratorOnlyTask(Q466ClientConfig.NarratorData.Story6)
end

return Q466trigger3
