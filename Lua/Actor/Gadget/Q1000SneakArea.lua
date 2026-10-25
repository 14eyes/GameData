require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000SneakArea = class("Q1000SneakArea", GadgetActorProxy)
Q1000SneakArea.defaultAlias = "Q1000SneakArea"
local Q1000ClientConfig = require("Quest/Client/Q1000ClientConfig")

function Q1000SneakArea:OnPostDataPrepare() end

function Q1000SneakArea:OnPostComponentPrepare()
    self:AddComponentTrigger(73, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1000SneakArea:TriggerIn() end

function Q1000SneakArea:TriggerOut()
    local actor = actorMgr:GetActor(Q1000ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 100010)
    end

    self:DestroySelf()
end

return Q1000SneakArea
