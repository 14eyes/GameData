require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local GoalMarkerAS = class("GoalMarkerAS", GadgetActorProxy)
GoalMarkerAS.defaultAlias = "GoalMarkerAS"
local n = 0
local v = 0

function GoalMarkerAS:OnPostDataPrepare()
    n = 0
    v = 0
end

function GoalMarkerAS:OnPostComponentPrepare()
    self:AddComponentTrigger(2, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function GoalMarkerAS:TriggerIn() end

function GoalMarkerAS:TriggerOut()
    v = v + 1
end

return GoalMarkerAS
