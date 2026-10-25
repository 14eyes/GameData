require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local DragonTrigger = class("DragonTrigger", GadgetActorProxy)
DragonTrigger.defaultAlias = "DragonTrigger"
local Q361ClientConfig = require("Quest/Client/Q361ClientConfig")

function DragonTrigger:OnPostDataPrepare() end

function DragonTrigger:OnPostComponentPrepare()
    self:AddComponentTrigger(57, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function DragonTrigger:TriggerIn() end

function DragonTrigger:TriggerOut()
    print("Out DragonTrigger")
    local actor = actorMgr:GetActor(Q361ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

return DragonTrigger
