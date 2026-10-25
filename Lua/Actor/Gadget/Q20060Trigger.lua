require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20060Trigger = class("Q20060Trigger", GadgetActorProxy)
Q20060Trigger.defaultAlias = "Q20060Trigger"
local Q20060ClientConfig = require("Quest/Client/Q20060ClientConfig")

local n = 0
function Q20060Trigger:OnPostDataPrepare() end

function Q20060Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(3, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q20060Trigger:TriggerIn()
    if n == 0 then
        self:RequestInteraction("Npc1441")
        n = 1
    end
end

function Q20060Trigger:TriggerOut() end
return Q20060Trigger
