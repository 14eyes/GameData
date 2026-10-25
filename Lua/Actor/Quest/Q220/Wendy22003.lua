require("Actor/ActorCommon")
local Quest001Test = require("Actor/Quest/Quest001Test")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Wendy22003 = class("Wendy22003", NpcActorProxy)
Wendy22003.defaultAlias = "Wendy22003"
local Q220Config = require("Actor/Quest/Q220/Config/Q220Config")

local wendyData = Q220Config.WendyData
local audienceInter = Q220Config.AudienceInter
local extrasData = Q220Config.ExtrasData

function Wendy22003:StartDance()
    self:TurnTo(M.Euler2DirXZ(self.bornDir))
    self:DoFreeStyle(1)
end

function Wendy22003:FinishDance(...)
    print("finish dance))))))))))))))))))")
    for i = 1, #extrasData.ExtrasIDs do
        local str = extrasData.Extras .. tostring(i)
        self:NotifyTo(str, wendyData.EvtFinishDance)
    end

    self:Destroy(false)
end

function Wendy22003:Start()
    print("start!wendy22003")
    self:StartDance()
    self:CallDelay(10, self.FinishDance)
end

function Wendy22003:OnDestroy()
    print("wendy " .. self.configID .. " destroied")
end

return Wendy22003
