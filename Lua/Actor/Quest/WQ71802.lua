require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71802 = class("Quest71802", QuestActorProxy)
Quest71802.defaultAlias = "Quest71802"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71802:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71802:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7180201"] = self.OnSubStart7180201,
        ["7180202"] = self.OnSubStart7180202,
        ["7180207"] = self.OnSubStart7180207,
        ["7180203"] = self.OnSubStart7180203,
        ["7180204"] = self.OnSubStart7180204,
        ["7180205"] = self.OnSubStart7180205,
        ["7180206"] = self.OnSubStart7180206
    }
end

function Quest71802:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7180201"] = self.OnSubFinish7180201,
        ["7180202"] = self.OnSubFinish7180202,
        ["7180207"] = self.OnSubFinish7180207,
        ["7180203"] = self.OnSubFinish7180203,
        ["7180204"] = self.OnSubFinish7180204,
        ["7180205"] = self.OnSubFinish7180205,
        ["7180206"] = self.OnSubFinish7180206
    }
end

function Quest71802:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71802:Start()
    print("Start")
end

function Quest71802:OnDestroy()
    print("OnDestroy")
end

function Quest71802:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71802:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71802:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71802:OnSubStart7180201(arg1)
    print("OnSubStart7180201")
end

function Quest71802:OnSubFinish7180201(arg1)
    print("OnSubFinish7180201")
end

function Quest71802:OnSubStart7180202(arg1)
    print("OnSubStart7180202")
end

function Quest71802:OnSubFinish7180202(arg1)
    print("OnSubFinish7180202")
end

function Quest71802:OnSubStart7180207(arg1)
    print("OnSubStart7180207")
    this:CreateQuestNpc(arg1, npcs.Npc20136Data.id, 0)
end

function Quest71802:OnSubFinish7180207(arg1)
    print("OnSubFinish7180207")
end

function Quest71802:OnSubStart7180203(arg1)
    print("OnSubStart7180203")
end

function Quest71802:OnSubFinish7180203(arg1)
    print("OnSubFinish7180203")
end

function Quest71802:OnSubStart7180204(arg1)
    print("OnSubStart7180204")
end

function Quest71802:OnSubFinish7180204(arg1)
    print("OnSubFinish7180204")
    globalActor:PlayerEnterDungeon(195, 1108)
end

function Quest71802:OnSubStart7180205(arg1)
    print("OnSubStart7180205")
    actorMgr:GetActor(npcs.Npc20136Data.script)
    this:DestroyQuestNpcActor(npcs.Npc20136Data.alias, 3)
end

function Quest71802:OnSubFinish7180205(arg1)
    print("OnSubFinish7180205")
end

function Quest71802:OnSubStart7180206(arg1)
    print("OnSubStart7180206")
    if self:GetSubQuestState(1103509) == 3 then
        self:CreateLocalGadget(70710914, "1", {x = -75.516, y = 108.9945, z = 31.016}, {x = 0, y = 46.571, z = 0}, 1058, nil, nil, true)
        self:CreateLocalGadget(70710389, "1", {x = -75.516, y = 109.7651, z = 31.016}, {x = 0, y = 46.571, z = 0}, 1058, nil, nil, true)
        self:CreateQuestNpc(arg1, 21517, 0)
    else
        self:CreateQuestNpc(arg1, npcs.Npc10258Data.id, 0)
    end
end

function Quest71802:OnSubFinish7180206(arg1)
    print("OnSubFinish7180206")
end

return Quest71802
