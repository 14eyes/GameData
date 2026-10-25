require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q484SmallTrigger = class("Q484SmallTrigger", GadgetActorProxy)
Q484SmallTrigger.defaultAlias = "Q484SmallTrigger"
local Q484ClientConfig = require("Quest/Client/Q484ClientConfig")

function Q484SmallTrigger:OnPostDataPrepare() end

function Q484SmallTrigger:OnPostComponentPrepare()
    self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q484SmallTrigger:TriggerIn()
    print("In Q484SmallTrigger")
    local actor = actorMgr:GetActor(Q484ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q484SmallTrigger:TriggerOut() end
return Q484SmallTrigger
