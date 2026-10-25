require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71022 = class("Quest71022", QuestActorProxy)
Quest71022.defaultAlias = "Quest71022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7102206"] = self.OnSubStart7102206,
        ["7102201"] = self.OnSubStart7102201,
        ["7102202"] = self.OnSubStart7102202,
        ["7102203"] = self.OnSubStart7102203,
        ["7102204"] = self.OnSubStart7102204,
        ["7102205"] = self.OnSubStart7102205,
        ["7102210"] = self.OnSubStart7102210,
        ["7102207"] = self.OnSubStart7102207,
        ["7102208"] = self.OnSubStart7102208,
        ["7102209"] = self.OnSubStart7102209
    }
end

function Quest71022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7102206"] = self.OnSubFinish7102206,
        ["7102201"] = self.OnSubFinish7102201,
        ["7102202"] = self.OnSubFinish7102202,
        ["7102203"] = self.OnSubFinish7102203,
        ["7102204"] = self.OnSubFinish7102204,
        ["7102205"] = self.OnSubFinish7102205,
        ["7102210"] = self.OnSubFinish7102210,
        ["7102207"] = self.OnSubFinish7102207,
        ["7102208"] = self.OnSubFinish7102208,
        ["7102209"] = self.OnSubFinish7102209
    }
end

function Quest71022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7102206"] = self.OnSubFailed7102206,
        ["7102201"] = self.OnSubFailed7102201,
        ["7102202"] = self.OnSubFailed7102202,
        ["7102203"] = self.OnSubFailed7102203,
        ["7102204"] = self.OnSubFailed7102204,
        ["7102205"] = self.OnSubFailed7102205,
        ["7102210"] = self.OnSubFailed7102210,
        ["7102207"] = self.OnSubFailed7102207,
        ["7102208"] = self.OnSubFailed7102208,
        ["7102209"] = self.OnSubFailed7102209
    }
end

function Quest71022:Start()
    print("Start")
end

function Quest71022:OnDestroy()
    print("OnDestroy")
end

function Quest71022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71022:DestroyNPC()
    print("DestroyNPC")
    self:DestroyQuestNpcActor(npcs.NPC20217Data.alias, 3)
end

function Quest71022:OnSubStart7102206(arg1)
    print("OnSubStart7102206")
    self:CreateQuestNpc(arg1, npcs.NPC20217Data.id, 0)
    self:GetQuestNpcActor(npcs.NPC20217Data.alias):DoFreeStyle(1190, true, nil, true, true)
end

function Quest71022:OnSubFinish7102206(arg1)
    print("OnSubFinish7102206")
end

function Quest71022:OnSubFailed7102206(arg1)
    print("OnSubFailed7102206")
end

function Quest71022:OnSubStart7102201(arg1)
    print("OnSubStart7102201")
end

function Quest71022:OnSubFinish7102201(arg1)
    print("OnSubFinish7102201")
end

function Quest71022:OnSubFailed7102201(arg1)
    print("OnSubFailed7102201")
end

function Quest71022:OnSubStart7102202(arg1)
    print("OnSubStart7102202")
    self:CreateQuestNpc(arg1, npcs.NPC20217Data.id, 0)
    self:GetQuestNpcActor(npcs.NPC20217Data.alias):DoFreeStyle(1190, true, nil, true, true)
end

function Quest71022:OnSubFinish7102202(arg1)
    print("OnSubFinish7102202")
    self:ShowBlackScreen(0.5, 2, 0.5, self.DestroyNPC, nil, nil, "")
end

function Quest71022:OnSubFailed7102202(arg1)
    print("OnSubFailed7102202")
end

function Quest71022:OnSubStart7102203(arg1)
    print("OnSubStart7102203")
end

function Quest71022:OnSubFinish7102203(arg1)
    print("OnSubFinish7102203")
end

function Quest71022:OnSubFailed7102203(arg1)
    print("OnSubFailed7102203")
end

function Quest71022:OnSubStart7102204(arg1)
    print("OnSubStart7102204")
end

function Quest71022:OnSubFinish7102204(arg1)
    print("OnSubFinish7102204")
end

function Quest71022:OnSubFailed7102204(arg1)
    print("OnSubFailed7102204")
end

function Quest71022:OnSubStart7102205(arg1)
    print("OnSubStart7102205")
end

function Quest71022:OnSubFinish7102205(arg1)
    print("OnSubFinish7102205")
    self:ShowBlackScreen(0.5, 2, 0.5, self.DestroyNPC, nil, nil, "")
end

function Quest71022:OnSubFailed7102205(arg1)
    print("OnSubFailed7102205")
end

function Quest71022:OnSubStart7102210(arg1)
    print("OnSubStart7102210")
end

function Quest71022:OnSubFinish7102210(arg1)
    print("OnSubFinish7102210")
end

function Quest71022:OnSubFailed7102210(arg1)
    print("OnSubFailed7102210")
end

function Quest71022:OnSubStart7102207(arg1)
    print("OnSubStart7102207")
end

function Quest71022:OnSubFinish7102207(arg1)
    print("OnSubFinish7102207")
end

function Quest71022:OnSubFailed7102207(arg1)
    print("OnSubFailed7102207")
end

function Quest71022:OnSubStart7102208(arg1)
    print("OnSubStart7102208")
end

function Quest71022:OnSubFinish7102208(arg1)
    print("OnSubFinish7102208")
end

function Quest71022:OnSubFailed7102208(arg1)
    print("OnSubFailed7102208")
end

function Quest71022:OnSubStart7102209(arg1)
    print("OnSubStart7102209")
end

function Quest71022:OnSubFinish7102209(arg1)
    print("OnSubFinish7102209")
end

function Quest71022:OnSubFailed7102209(arg1)
    print("OnSubFailed7102209")
end

return Quest71022
